const Rx = require('rxjs')

const Push = require("./push")
const TextBuffer = require('./TextBuffer')

const Commands = {
  TEXT: 'TEXT',
  BUTTON: 'BUTTON',
  PAD: 'PAD',
  FULL_PAD: 'FULL_PAD',
  CLEAR_TEXT: 'CLEAR_TEXT',
  CLEAR_TEXT_ROW: 'CLEAR_TEXT_ROW',
  CLEAR_PADS: 'CLEAR_PADS',
}


module.exports = class {
  
  push = null
  buffer = new TextBuffer()
  
  turns = new Rx.Subject()
  buttons = new Rx.Subject()
  pads = new Rx.Subject()

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
    const sub = textCmds.pipe(Rx.bufferTime(40)).subscribe(cmd => _this.handleText(cmd))
    sub.add(otherCmds.subscribe(cmd => _this.handleOther(cmd)))
    return sub
  }
  
  // handle a batch of text-related commands, condensing them where possible
  handleText(cmds) {
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
        _this.push.displayButton(...cmd.slice(1))
        break
      case Commands.PAD:
        _this.push.displayPad(...cmd.slice(1))
        break
      case Commands.FULL_PAD:
        _this.push.displayPadFull(...cmd.slice(1))
        break
      case Commands.CLEAR_PADS:
        _this.push.clearPads()
        break
    }
  }
    
  static textCmd = (row, slot, text) => [Commands.TEXT, row, slot, text + ""]
  
  static buttonCmd = (button, state) => [Commands.BUTTON, button, state]
  
  static padCmd = (x, y, state) => [Commands.PAD, x, y, state]

  static fullPadCmd = (x, y, hexColor) => [Commands.FULL_PAD, x, y, hexColor]
  
  static clearTextCmd = () => [Commands.CLEAR_TEXT]
  static clearTextRowCmd = (row) => [Commands.CLEAR_TEXT, row]
  static clearPadsCmd = () => [Commands.CLEAR_PADS]

  
}