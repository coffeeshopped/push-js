const Push = require("../push")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./widget')
const Knob = require('./knob')
const Pager = require('./pager')

module.exports = class extends Widget {
  
  knobs = []
  pager = new Pager(0, 8)

  constructor() {
    super()
    // create the knobs
    for (let p=0; p<8; ++p) {
      const arr = []
      for (let k=0; k<8; ++k) {
        const knob = new Knob(k, p+"-"+k)
        arr.push(knob)
      }
      this.knobs.push(arr)
    }
  }
  
  displayObservable() {
    // this structure assumes that this.knobs will never change (i.e. all knobs are created at the get-go, I think)
    const knobs = this.knobs
    const kd = this.pager.value.pipe(Rx.switchMap(page => {
      const knobDisplays = knobs[page].map(k => k.displayObservable())
      return Rx.merge(...knobDisplays)
    }))
    return Rx.merge(this.pager.displayObservable(), kd)    
  }
  
  subscribe(bundle) {
    const pager = this.pager
    const sub = pager.subscribe(bundle) // pager is always subscribed
    
    this.knobs.forEach((knobPage, p) => {
      const pfx = ['page', p]
      const newBundle = {
        turns: pager.value.pipe(Rx.switchMap(page => page == p ? bundle.turns : Rx.EMPTY)),
        commands: Widget.filteredCommands(bundle.commands, pfx)
      }

      knobPage.forEach(k => sub.add(k.subscribe(newBundle)))
      
      const knobActions = Rx.merge(...(knobPage.map((k, i) => k.actions)))
      sub.add(Widget.prefixedActions(knobActions, pfx).subscribe(this.actions))

    })
            
    return sub
  }
  
}
