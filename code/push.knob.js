const Push = require("./push")
const PushRx = require("./push.rx")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./push.widget')


function adjustValue(value, inc, min, max) {
  const v = value + inc
  return v < min ? min : (v > max ? max : v)
}

module.exports = class extends Widget {
  
  slot = new BehaviorSubject(0)
  label = new BehaviorSubject("knob.")
  value = new BehaviorSubject(0)
  min = new BehaviorSubject(0)
  max = new BehaviorSubject(127)
  inc = new BehaviorSubject(1)
  
  constructor(slot, label) {
    super()
    this.slot.next(slot)
    this.label.next(label)
        
    // sub.add(pushRx.addDisplay(this.displayLabelObservable()))
    // sub.add(pushRx.addDisplay(this.displayValueObservable()))
  }
  
  displayLabelObservable() {
    const latest = Rx.combineLatest([this.slot, this.label])
    return latest.pipe(Rx.map(a => [PushRx.textCmd(0, ...a)]))
  }

  displayValueObservable() {
    const latest = Rx.combineLatest([this.slot, this.value])
    return latest.pipe(Rx.map(a => [PushRx.textCmd(1, ...a)]))
  }

  displayObservable() {
    return Rx.merge(this.displayLabelObservable(), this.displayValueObservable())
  }

  // should be called by some outside object during the setup phase. the outside object should control the flow of turn events
  // expects Observable<[Push.Knob, knobDelta]> (like pushRx emits from turns)  
  subscribe(turns) {
    
    // each time a turn event comes in, if it's the knob we're watching, output what the adjusted value should be
    // based on inc, max, min
    const latest = Rx.withLatestFrom(this.value, this.inc, this.min, this.max, this.slot)
    
    const adjustedValue = turns.pipe(latest, Rx.map(([turn, v, inc, min, max, slot]) => {
      if (turn[0] - Push.Knob.BIG_0 != slot) { return false }
      
      return adjustValue(v, inc * turn[1], min, max)
    }), Rx.filter(v => v !== false ))
    
    // TODO: add option to not self-update value
    const sub = adjustedValue.subscribe(this.value)
    sub.add(this.subscribeAction(adjustedValue))
    return sub
  }
    
}

