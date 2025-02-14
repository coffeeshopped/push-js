
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
    
  }
  
  widgets = {}
  widgetSubscriptions = {}
  // event output
  actions = new Rx.Subject()

  
  addWidget(widget, widgetId) {
    // store widget reference
    this.widgets[widgetId] = widget
    
    // subscribe the widget to events
    // route any incoming commands to this widget.
    const newBundle = {
      turns: this.turns,
      buttons: this.buttons,
      pads: this.pads,
      commands: Widget.filteredCommands(this.commands, [widgetId])
    }
    const sub = widget.subscribe(newBundle)
    // add widget's actions to top-level action stream, prefixed by widgetId
    sub.add(Widget.prefixedActions(widget.actions, [widgetId]).subscribe(this.actions))
    // store subscription reference (for later removal)
    this.widgetSubscriptions[widgetId] = sub
    
    // add this widget to rendering
    this.addDisplay(widget.displayObservable()) 
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