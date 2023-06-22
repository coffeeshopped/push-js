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

module.exports = class {
  
  push = null
  
  turns = new Rx.Subject()
  buttons = new Rx.Subject()

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
      }
    })
  }
  
  addDisplay(display) {
    const _this = this
    return display.subscribe(cmds => {
      // console.log(cmds)
      cmds.forEach(cmd => {
        switch (cmd[0]) {
          case "displayText":
            _this.push.displayText(...cmd.slice(1))
            break
          case "displayButton":
            _this.push.displayButton(...cmd.slice(1))
            break
        }
      })
    })
  }
  
  static textCmd(row, slot, text) {
    return ['displayText', row, slot, text + ""]
  }
  
  static buttonCmd(button, state) {
    return ['displayButton', button, state]
  }
}