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
    
    this.pushRx.subscribe(pushRx => {
      
    })
    const sub = this.turnsSubscribe(pushRx)
    
    sub.add(pushRx.addDisplay(this.displayLabelObservable()))
    sub.add(pushRx.addDisplay(this.displayValueObservable()))
    
    return sub

  }
  
  displayLabelObservable() {
    const latest = Rx.combineLatest([this.slot, this.label])
    return latest.pipe(Rx.map(a => [PushRx.textCmd(0, ...a)]))
  }

  displayValueObservable() {
    const latest = Rx.combineLatest([this.slot, this.value])
    return latest.pipe(Rx.map(a => [PushRx.textCmd(1, ...a)]))
  }

  turnsSubscribe(pushRx) {
    // flow parts: pushRx, this.action
    
    // each time a turn event comes in, if it's the knob we're watching, output what the adjusted value should be
    // based on inc, max, min
    const latest = Rx.withLatestFrom(this.value, this.inc, this.min, this.max, this.slot)
    const adjustedValue = pushRx.turns.pipe(latest, Rx.map(([turn, v, inc, min, max, slot]) => {
      if (turn[0] - Push.Knob.BIG_0 != slot) { return false }
      
      return adjustValue(v, inc * turn[1], min, max)
    }), Rx.filter(v => v !== false ))
    
    // we don't actually update our own value
    // instead, send out an action proposing what the new value *should* be
    // logic outside of the knob should feed this new value in, if successful, which will trigger UI updates
    // TODO: add option to self-update value
    const sub = this.action.subscribe(adjustedValue)
    return sub
  }
    
}

