import { Push, PushRx } from "../src/index.js"
import { Subject } from 'rxjs'
import { getInputs, getOutputs, Input, Output } from 'easymidi';

// console.log(getInputs())
// console.log(getOutputs())

const push = new Push()
const pushRx = new PushRx(push)

const commands = new Subject()

const handlers = {
  note: (note, velo) => push.noteIn(note, velo),
  cc: (cc, value) => push.ccIn(cc, value),
  cmd: function(...args) {
    commands.next(args)
    // switch (cmd) {
    //   case "value":
    //     state.knobs[slot].value.next(value)
    //     break
    //   case "label":
    //     state.knobs[slot].label.next(value)
    //     break        
    // }    
  },
}

const input = new Input("Ableton Push User Port")
const output = new Output("Ableton Push User Port")

// send midi from our JS Push to the unit
push.midiOutListener = (bytes) => output._output.sendMessage(bytes)
// receive Midi from the unit and handle it
input.on('noteon', msg => push.noteIn(msg.note, msg.velocity))
input.on('noteoff', msg => push.noteIn(msg.note, 0))
input.on('cc', msg => push.ccIn(msg.controller, msg.value))
// input.on('poly aftertouch', msg => console.log('poly aftertouch', msg.note, msg.pressure, msg.channel));


push.displayTextLine(0, "Hi Chadly!!!!")

const bundle = {
  turns: pushRx.turns,
  buttons: pushRx.buttons,
  commands: commands,
}

// const Knob64 = require('./widget/Knob64')
// const knob64 = new Knob64()
// knob64.subscribe(bundle)
// pushRx.addDisplay(knob64.displayObservable())
// knob64.actions.subscribe(action => {
//   maxAPI.outlet(["action"].concat(action))
// })
// 

import { Ttoggle } from '../src/widget/ttoggle.js'

const toggles = []
for (const key in Push.Button) { 
  toggles.push(key)
}
const allT = toggles.map(t => {
  const b = new Ttoggle(t)
  b.subscribe(bundle)
  pushRx.addDisplay(b.displayObservable())
  b.actions.subscribe(action => {
    // maxAPI.outlet(["action", t].concat(action))
  })
  return b
})

// commands.subscribe(cmd => {
//   if (cmd.length < 2) { return }
//   switch (cmd[0]) {
//     case "button":
//       allT.forEach(tt => {
//         tt.onState.next(cmd[1])
//       })
//       break
//     case "buttoff":
//       allT.forEach(tt => {
//         tt.offState.next(cmd[1])
//       })
//       break
//     case "buttog":
//       allT.forEach(tt => {
//         tt.value.next(cmd[1])
//       })
//       break
// 
// 
//   }
// })
