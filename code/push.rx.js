const Push = require("./push")
const Rx = require('rxjs')

// Rx.merge(...displays).subscribe(cmds => {
//   // console.log(cmds)
//   cmds.forEach(cmd => {
//     switch (cmd[0]) {
//       case "displayText":
//         push.displayText(...cmd.slice(1))
//         break
//       case "displayButton":
//         push.displayButton(...cmd.slice(1))
//         break
//     }
//   })
// })

const Commands = {
  TEXT: 'TEXT',
  BUTTON: 'BUTTON',
  PAD: 'PAD',
  FULL_PAD: 'FULL_PAD',
}


module.exports = class {
  
  push = null
  
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
    return display.subscribe(cmds => {
      // console.log(cmds)
      cmds.forEach(cmd => {
        if (cmd.length < 2) { return }
        switch (cmd[0]) {
          case Commands.TEXT:
            _this.push.displayText(...cmd.slice(1))
            break
          case Commands.BUTTON:
            _this.push.displayButton(...cmd.slice(1))
            break
          case Commands.PAD:
            _this.push.displayPad(...cmd.slice(1))
            break
          case Commands.FULL_PAD:
            _this.push.displayPadFull(...cmd.slice(1))
            break
        }
      })
    })
  }
    
  static textCmd(row, slot, text) {
    return [Commands.TEXT, row, slot, text + ""]
  }
  
  static buttonCmd(button, state) {
    return [Commands.BUTTON, button, state]
  }
  
  static padCmd(x, y, state) {
    return [Commands.PAD, x, y, state]
  }

  static fullPadCmd(x, y, hexColor) {
    return [Commands.FULL_PAD, x, y, hexColor]
  }
  
}