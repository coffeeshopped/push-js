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

const bundle = {
  turns: pushRx.turns,
  buttons: pushRx.buttons,
  commands: commands,
}

const Knob64 = require('./push.knob64')
const knob64 = new Knob64()
knob64.subscribe(bundle)
pushRx.addDisplay(knob64.displayObservable())
knob64.actions.subscribe(action => {
  maxAPI.outlet(["action"].concat(action))
})

const Toggle = require('./push.toggle')

const toggles = []
for(key in Push.Button) { 
  toggles.push(key)
}
const allT = toggles.map(t => {
  const b = new Toggle(t)
  b.subscribe(bundle)
  pushRx.addDisplay(b.displayObservable())
  b.actions.subscribe(action => {
    maxAPI.outlet(["action", t].concat(action))
  })
  return b
})

commands.subscribe(cmd => {
  if (cmd.length < 2) { return }
  switch (cmd[0]) {
    case "button":
      allT.forEach(tt => {
        tt.onState.next(cmd[1])
      })
      break
    case "buttoff":
      allT.forEach(tt => {
        tt.offState.next(cmd[1])
      })
      break
    case "buttog":
      allT.forEach(tt => {
        tt.value.next(cmd[1])
      })
      break


  }
})
