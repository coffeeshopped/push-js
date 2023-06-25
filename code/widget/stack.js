// const Push = require("../push")
// const Rx = require('rxjs')
// const BehaviorSubject = Rx.BehaviorSubject
// const Widget = require('./widget')
// const Knob = require('./knob')
// const Pager = require('./pager')
// 
// module.exports = class extends Widget {
//   
//   knobs = []
//   pager = new Pager(8)
//   widgets = []
// 
//   constructor() {
//     super()
//     // create the knobs
//     for (let p=0; p<8; ++p) {
//       const arr = []
//       for (let k=0; k<8; ++k) {
//         const knob = new Knob(k, p+"-"+k)
//         arr.push(knob)
//       }
//       this.knobs.push(arr)
//     }
//   }
//   
//   displayObservable() {
//     // this structure assumes that this.knobs will never change (i.e. all knobs are created at the get-go, I think)
//     const knobs = this.knobs
//     const kd = this.pager.value.pipe(Rx.switchMap(page => {
//       const knobDisplays = knobs[page].map(k => k.displayObservable())
//       return Rx.merge(...knobDisplays)
//     }))
//     return Rx.merge(this.pager.displayObservable(), kd)    
//   }
//   
//   subscribe(bundle) {
//     const pager = this.pager
//     const sub = pager.subscribe(bundle) // pager is always subscribed
//     
//     // commands:
//     // [push, widget] push a widget onto the stack
//     // [pop] pop a widget from the stack
//     // [top, ...] send a command to the top widget on the stack
//     const _this = this
//     const topCommands = bundle.commands.pipe(
//       Rx.filter(cmd => cmd[0] == 'top'),
//       Rx.map(cmd => cmd.slice(1))
//     )
//     const pushCommands = bundle.commands.pipe(
//       Rx.filter(cmd => cmd[0] == 'push'),
//       Rx.map(cmd => cmd[1])
//     )
//     const popCommands = bundle.commands.pipe(
//       Rx.filter(cmd => cmd[0] == 'pop')
//     )
//     
//     bundle.commands.pipe(
//       Rx.scan((acc, cmd) => {
//         switch (cmd[0]) {
//           case 'push':
//             // unsubscribe the top widget, if it exists
//             // push the new widget
//             _this.widgets.push(cmd[1])
//             // subscribe the new top widget
//             break
//           case 'pop':
//             break
//           case 'top':
//             break
//         }
// 
//       }, [])
//     )
//     
//     bundle.commands.subscribe(cmd => {
//       switch (cmd[0]) {
//         case 'push':
//           // unsubscribe the top widget, if it exists
//           // push the new widget
//           _this.widgets.push(cmd[1])
//           // subscribe the new top widget
//           break
//         case 'pop':
//           break
//         case 'top':
//           break
//       }
//     })
//     
//     this.knobs.forEach((knobPage, p) => {
//       const pfx = ['page', p]
//       const newBundle = {
//         turns: pager.value.pipe(Rx.switchMap(page => page == p ? bundle.turns : Rx.EMPTY)),
//         commands: Widget.filteredCommands(bundle.commands, pfx)
//       }
// 
//       knobPage.forEach(k => sub.add(k.subscribe(newBundle)))
//       
//       const knobActions = Rx.merge(...(knobPage.map((k, i) => k.actions)))
//       sub.add(Widget.prefixedActions(knobActions, pfx).subscribe(this.actions))
// 
//     })
// 
//     return sub
//   }
//   
//   
// }
