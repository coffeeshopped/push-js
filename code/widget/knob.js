const Push = require("../push")
const PushRx = require("../push.rx")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./widget')


function adjustValue(value, inc, min, max) {
  const v = value + inc
  return v < min ? min : (v > max ? max : v)
}

module.exports = class extends Widget {
  
  slot = 0
  label = new BehaviorSubject("knob.")
  value = new BehaviorSubject(0)
  min = new BehaviorSubject(0)
  max = new BehaviorSubject(127)
  inc = new BehaviorSubject(1)
  hidden = new BehaviorSubject(0)
  
  constructor(slot, label) {
    super()
    this.slot = slot
    this.label.next(label)
  }
  
  displayLabelObservable() {
    const slot = this.slot
    const latest = Rx.combineLatest(this.hidden, this.label)
    return latest.pipe(
      Rx.map(([hidden, l]) => [PushRx.textCmd(0, slot, hidden > 0 ? "" : l)])
    )
  }

  displayValueObservable() {
    const slot = this.slot
    const latest = Rx.combineLatest(this.hidden, this.value)
    return latest.pipe(
      Rx.map(([hidden, v]) => [PushRx.textCmd(1, slot, hidden > 0 ? "" : v)])
    )
  }
  
  displayVisualObservable() {
    const slot = this.slot
    const latest = Rx.combineLatest(this.hidden, this.value, this.min, this.max)
    return latest.pipe(
      Rx.map(([hidden, v, min, max]) => {
        const pct = Math.max(0.0, Math.min((v - min) / (max - min), 1.0))
        const bars = Math.floor(pct * 16.0)
        const doubleBars = Math.floor(bars / 2)
        const singleBars = bars % 2
        const dashes = 8 - (doubleBars + singleBars)
        const viz = "║".repeat(doubleBars) + "├".repeat(singleBars) + "─".repeat(dashes)
        return [PushRx.textCmd(2, slot, hidden > 0 ? "" : viz)]
      })
    )
  }

  displayObservable() {
    return Rx.merge(this.displayLabelObservable(), this.displayValueObservable(), this.displayVisualObservable())
  }

  subscribe(bundle) {
    // each time a turn event comes in, if it's the knob we're watching, output what the adjusted value should be
    // based on inc, max, min
    const slot = this.slot
    const latest = Rx.withLatestFrom(this.value, this.inc, this.min, this.max, this.hidden)
    
    // expects Observable<[Push.Knob, knobDelta]> (like pushRx emits from turns)  
    const adjustedValue = bundle.turns.pipe(latest, Rx.map(([turn, v, inc, min, max, hidden]) => {
      if (hidden) { return false }
      if (turn[0] - Push.Knob.BIG_0 != slot) { return false }
      
      return adjustValue(v, inc * turn[1], min, max)
    }), Rx.filter(v => v !== false ))
    
    // TODO: add option to not self-update value
    const sub = Widget.prefixedActions(adjustedValue, ["knob", slot, "value"]).subscribe(this.actions)
    // sub.add(adjustedValue.subscribe(this.value))
    
    const filteredCommands = Widget.filteredCommands(bundle.commands, ['knob', slot])

    // commands
    sub.add(this.subscribePropertyCommands(filteredCommands, {
      label: this.label,
      value: this.value,
      min: this.min,
      max: this.max,
      inc: this.inc,
      hidden: this.hidden,
    }))
        
    return sub
  }
  
  
}

