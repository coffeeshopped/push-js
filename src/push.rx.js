
import * as Rx from 'rxjs'
import { Push } from "./push.js"
import { TextBuffer } from './TextBuffer.js'
import { Widget } from './widget/Widget.js'

const Commands = {
  TEXT: 'TEXT',
  BUTTON: 'BUTTON',
  PAD: 'PAD',
  FULL_PAD: 'FULL_PAD',
  CLEAR_TEXT: 'CLEAR_TEXT',
  CLEAR_TEXT_ROW: 'CLEAR_TEXT_ROW',
  CLEAR_PADS: 'CLEAR_PADS',
}


export class PushRx {
  
  push = null
  buffer = new TextBuffer()
  
  turns = new Rx.Subject()
  buttons = new Rx.Subject()
  pads = new Rx.Subject()
  commands = new Rx.Subject()
  subscription = new Rx.Subscription()
  
  textCommands = [
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
  ]
  
  knobCommands = [
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
    new Rx.Subject(),
  ]
  
  constructor(push) {
    this.push = push
    
    const _this = this
    push.addListener((event) => {
      switch (event[0]) {
        case Push.Event.TURN:      
          _this.turns.next([event[1], event[2]])
          break
        case Push.Event.BUTTON:
          // button, true/false
          _this.buttons.next([event[1], event[2]])
          break
        case Push.Event.PAD:
          _this.pads.next([event[1], event[2], event[3]])
          break
      }
    })
    
    // set up text buffers
    this.textCommands.forEach((subject, i) => {
      _this.makeTextBuffer(subject, i)
    })
    
    this.knobCommands.forEach((subject, i) => {
      _this.makeKnobRouter(subject, i)
    })
  }
  
  widgets = {}
  widgetSubscriptions = {}
  // event output
  actions = new Rx.Subject()

  
  addWidget(widget, widgetId) {
    // store widget reference
    this.widgets[widgetId] = widget
    
    // get the requested input resources
    // TODO need to scope the commands (filter) by widgetId
    const cmds = [this.commands]
    for (const key in widget.inputs) {
      const input = widget.inputs[key]
      switch (input.type) {
        case 'knob':
          const subj = new Rx.Subject()
          const mapped = subj.pipe(
            Rx.map(turn => [key, turn])
          )
          cmds.push(mapped)
          this.knobCommands[input.index].next(["add", widgetId, subj])
          break
        case 'button-row':
          for (let i=0; i<8; ++i) {
            cmds.push(this.buttons.pipe(
              Rx.filter(btn => (btn[0] - (0x14 + (input.row * 0x52))) == i),
              Rx.map(btn => [key, i, btn[1]])
            ))
          }
          break
      }
    }
    
    // now that we have the inputs, get the state
    const stateBehavior = new Rx.BehaviorSubject(widget.state)
    const state = Rx.merge(...cmds).pipe(
      Rx.scan(widget.next, widget.state)
    )
    this.subscription.add(state.subscribe(stateBehavior))
    
    widget.display.forEach(d => {
      switch (d.type) {
        case 'text-slot':
          const slotStart = d.slot * 8 + Math.ceil(d.slot / 2.0)
          const slotEnd = slotStart + 8
          const dispObs = stateBehavior.pipe(Rx.map(s => {
            // startCol, endCol, text
            return [slotStart, slotEnd, d.text(s)]
          }))
          this.textCommands[d.row].next(["add", widgetId, dispObs])
          return
          break
        case 'button-row':
          const mapFn = s => d.values(s).map((v, i) => PushRx.buttonCmd(i + 0x14 + d.row * 0x52, v))
          this.addDisplay(stateBehavior.pipe(Rx.map(mapFn)))
          break
      }
    })
    
  }
  
  // ["add", <id>, Subject]
  // ["remove", <id>]
  makeKnobRouter(cmds, knobIndex) {
    // takes in commands to add/remove/etc and maintains an inner stack of Subjects to receive knob input
    // outputs the Subject at the top of the stack.
    const current = cmds.pipe(
      Rx.scan((stack, cmd) => {
        switch (cmd[0]) {
          case "add":
            stack.push([cmd[1], cmd[2]])
            break
          case "remove":
            stack = stack.filter(a => a[0] != cmd[1])
            break
          // case "moveTop":
          //   break
        }
        return stack
      }, []),
      // return the top Subject
      Rx.map(stack => stack.length == 0 ? null : stack[stack.length - 1][1])
    )
    
    // subscribe to this knob's turns, and route those turns to the top-most Subject on the stack
    const sub = this.turns.pipe(
      Rx.filter(turn => turn[0] - 0x47 == knobIndex),
      Rx.map(turn => turn[1]),
      Rx.withLatestFrom(current)
    ).subscribe(([turn, current]) => {
      current.next(turn)
    })
    this.subscription.add(sub)
  }
  
  // const cmds = Rx.of(
  //   ["add", "first", BehaviorSubject],
  //   ["add", "second", BehaviorSubject],
  //   ["add", "third", BehaviorSubject],
  //   ["remove", "second"],
  //   ["add", "fourth", BehaviorSubject],
  //   ["remove", "first"]
  // )
  
  // ["add", <id>, BehaviorSubject]
  // ["remove", <id>]
  makeTextBuffer(cmds, rowIndex) {
    const _this = this
    const displayStack = cmds.pipe(
      Rx.scan((stack, cmd) => {
        switch (cmd[0]) {
          case "add":
            stack.push([cmd[1], cmd[2]])
            break
          case "remove":
            stack = stack.filter(a => a[0] != cmd[1])
            break
          // case "moveTop":
          //   break
        }
        return stack
      }, []),
      // get just the BehaviorSubjects (already sorted by z-index)
      Rx.map(stack => stack.map(a => a[1])),
      Rx.switchScan((acc, stack) => {
        return Rx.combineLatest(stack)
      })
    )
    // [0, text...]
    // [startCol, endCol, text]
    const sub = displayStack.subscribe(cmds => {
      // this is inefficient, but for now, just go back to front and draw every one of them.
      let row = "                                                                    "
      cmds.forEach(cmd => {
        // pad the text
        const text = cmd[2]
        let padded = text
        const width = cmd[1] - cmd[0]
        if (text.length > width) {
          padded = text.slice(0,width)
        }
        else if (text.length < width) {
          padded = text.padEnd(width, ' ')
        }            

        row = row.slice(0, cmd[0]) + padded + row.slice(cmd[1])
      })
      _this.push.displayTextLine(rowIndex, row)    
    })
    this.subscription.add(sub)
  }
  
  // process a command.
  cmd(cmd) {
    this.commands.next(cmd)
  }
  
  actionSubscription = null
  setActionHandler(callback) {
    if (this.actionSubscription) {
      this.actionSubscription.unsubscribe()
    }
    this.actionSubscription = this.actions.subscribe(callback)
  }
  
  addDisplay(display) {
    const _this = this
    
    // get an observable of just one command at a time
    const flattened = display.pipe(
      Rx.mergeMap(cmds => Rx.from(cmds))
    )
    const [textCmds, otherCmds] = Rx.partition(flattened, cmd => {
      if (cmd.length < 1) { return false }
      switch (cmd[0]) {
        case Commands.TEXT:
        case Commands.CLEAR_TEXT:
        case Commands.CLEAR_TEXT_ROW:
          return true
          break
        default:
          return false
      }
    })
    
    // group text commands together every 40 ms
    const sub = textCmds.pipe(Rx.bufferTime(40)).subscribe(cmds => _this.handleText(cmds))
    sub.add(otherCmds.subscribe(cmd => _this.handleOther(cmd)))
    return sub
  }
  
  // handle a batch of text-related commands, condensing them where possible
  handleText(cmds) {
    if (cmds.length == 0) { return }
    console.log(cmds)
    const _this = this
    cmds.forEach(cmd => {
      if (cmd.length < 1) { return }
      switch (cmd[0]) {
        case Commands.TEXT:
          _this.buffer.setSlotText(...cmd.slice(1))
          break
        case Commands.CLEAR_TEXT:
          _this.buffer.clear()
          break
        case Commands.CLEAR_TEXT_ROW:
          _this.buffer.clearTextRow(...cmd.slice(1))
          break
      }
    })
    _this.buffer.render(_this.push)
  }
  
  handleOther(cmd) {
    if (cmd.length < 1) { return }
    switch (cmd[0]) {
      case Commands.BUTTON:
        this.push.displayButton(...cmd.slice(1))
        break
      case Commands.PAD:
        this.push.displayPad(...cmd.slice(1))
        break
      case Commands.FULL_PAD:
        this.push.displayPadFull(...cmd.slice(1))
        break
      case Commands.CLEAR_PADS:
        this.push.clearPads()
        break
    }
  }
    
  // set the text for a given row and slot (1/8th of the row)
  static textCmd = (row, slot, text) => [Commands.TEXT, row, slot, text + ""]
  
  static buttonCmd = (button, state) => [Commands.BUTTON, button, state]
  
  // light up a pad, shortcut-style (preset colors)
  static padCmd = (x, y, state) => [Commands.PAD, x, y, state]

  // light up a pad using full RGB value
  static fullPadCmd = (x, y, hexColor) => [Commands.FULL_PAD, x, y, hexColor]
  
  static clearTextCmd = () => [Commands.CLEAR_TEXT]
  static clearTextRowCmd = (row) => [Commands.CLEAR_TEXT, row]
  static clearPadsCmd = () => [Commands.CLEAR_PADS]

  
}