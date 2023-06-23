const maxAPI = require("max-api")
const Push = require("./push")
const Rx = require('rxjs')
const PushRx = require('./push.rx')

const push = new Push()
const pushRx = new PushRx(push)

const handlers = {
  note: (note, velo) => push.noteIn(note, velo),
  cc: (cc, value) => push.ccIn(cc, value),
  knob: function(slot, cmd, value) {
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

maxAPI.addHandlers(handlers)

push.midiOutListener = (bytes) => maxAPI.outlet(["midi"].concat(bytes))

const Knob64 = require('./push.knob64')
const knob64 = new Knob64()
knob64.subscribe(pushRx.turns, pushRx.buttons)
pushRx.addDisplay(knob64.displayObservable())
