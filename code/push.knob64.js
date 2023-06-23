const Push = require("./push")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./push.widget')
const Knob = require('./push.knob')
const Pager = require('./push.pager')

module.exports = class extends Widget {
  
  knobs = []
  pager = new Pager(8)

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
  
  subscribe(turns, buttons) {
    const pager = this.pager
    const sub = pager.subscribe(buttons) // pager is always subscribed
    
    for (let p=0; p<8; ++p) {
      const t = pager.value.pipe(Rx.switchMap(page => page == p ? turns : Rx.EMPTY))
      this.knobs[p].forEach(k => sub.add(k.subscribe(t)))
    }
    
    // TODO: output actions from knobs, yeah?
    
    return sub
  }
  
}
