import { Push, PushRx } from "../src/index.js"
import { getInputs, getOutputs, Input, Output } from 'easymidi';

const push = new Push()
const pushRx = new PushRx(push)

const input = new Input("Ableton Push User Port")
const output = new Output("Ableton Push User Port")

// send midi from our JS Push to the unit
push.midiOutListener = (bytes) => output._output.sendMessage(bytes)
// receive Midi from the unit and handle it
input.on('noteon', msg => push.noteIn(msg.note, msg.velocity))
input.on('noteoff', msg => push.noteIn(msg.note, 0))
input.on('cc', msg => push.ccIn(msg.controller, msg.value))
// input.on('poly aftertouch', msg => console.log('poly aftertouch', msg.note, msg.pressure, msg.channel));


import { Knob64 } from '../src/widget/Knob64.js'

const knob64 = new Knob64()
pushRx.addWidget(knob64, "knob64")

// const knob = new Knob(0, "Knob 1")
// bundle.commands.next(["knob", 0, "label", "what"])
// bundle.commands.next(["knob", 0, "max", 500])

import { PadRadio } from '../src/widget/PadRadio.js'
const radio = new PadRadio([0,0], 8, 8)
pushRx.addWidget(radio, "radio")

pushRx.setActionHandler(action => {
  // log every action on the Push to the console.
  console.log(action)
  
  // turning knob 1 on page 1 sets the max value of knob 0 on page 1.
  if (action.length == 7 && action[0] == "knob64" && action[1] == "page" && action[2] == 0 & action[3] == "knob" && action[4] == 1 && action[5] == "value") {
    const v = action[6]
    pushRx.cmd(["knob64", "page", 0, "knob", 0, "max", v])
  }
})

// periodically update the value of the radio
setInterval(() => {
  const x = Math.floor(Math.random() * 64)
  pushRx.cmd(["radio", "value", x])
}, 200)
