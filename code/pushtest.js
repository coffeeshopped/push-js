const maxAPI = require("max-api")
const Push = require("./push")
const Knob = require("./push.knob")
const Pager = require("./push.pager")
const Rx = require('rxjs')
const PushRx = require('./push.rx')

const push = new Push()
const pushRx = new PushRx(push)

const state = {
  knobs: [
    new Knob(0, "Hey"),
    new Knob(1, "Bud"),
    new Knob(2, "Eye"),
    new Knob(3, "Think"),
    new Knob(4, "It"),
    new Knob(5, "Works"),
    new Knob(6, "Now"),
    new Knob(7, "Huh"),
  ],
  pager: new Pager(8)
}

const handlers = {
  note: (note, velo) => push.noteIn(note, velo),
  cc: (cc, value) => push.ccIn(cc, value),
  knob: function(slot, cmd, value) {
    switch (cmd) {
      case "value":
        state.knobs[slot].value.next(value)
        break
      case "label":
        state.knobs[slot].label.next(value)
        break        
    }    
  },
}

maxAPI.addHandlers(handlers)

push.midiOutListener = (bytes) => maxAPI.outlet(["midi"].concat(bytes))

for (let i=0; i<8; ++i) {
  state.knobs[i].subscribe(pushRx.turns)
  state.knobs[i].action.subscribe(evt => {
    console.log(evt)
    maxAPI.outlet(["knob", i, evt[1]])
  })  
  pushRx.addDisplay(state.knobs[i].displayObservable())
}

state.pager.subscribe(pushRx.buttons)
pushRx.addDisplay(state.pager.displayObservable())