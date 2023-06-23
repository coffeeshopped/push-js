const maxAPI = require("max-api")
const Push = require("./push")
const Rx = require('rxjs')
const PushRx = require('./push.rx')

const push = new Push()
const pushRx = new PushRx(push)

const commands = new Rx.Subject()

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

maxAPI.addHandlers(handlers)

push.midiOutListener = (bytes) => maxAPI.outlet(["midi"].concat(bytes))

const Knob64 = require('./push.knob64')
const knob64 = new Knob64()
knob64.subscribe({
  turns: pushRx.turns,
  buttons: pushRx.buttons,
  commands: commands,
})
pushRx.addDisplay(knob64.displayObservable())

knob64.actions.subscribe(action => {
  maxAPI.outlet(["action"].concat(action))
})