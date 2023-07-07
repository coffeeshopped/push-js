const Rx = require('rxjs')

const Push = require("../push")
const PushRx = require("../push.rx")
const Widget = require('./Widget')

module.exports = class extends Widget {
  
  value = new Rx.BehaviorSubject(0) // 0 or 1
  onState = new Rx.BehaviorSubject(Push.BState.ON)
  offState = new Rx.BehaviorSubject(Push.BState.DIM)
  
  // button: string value corresponding to Push constant
  constructor(button) {
    super()
    this.button = Push.Button[button]
    this.buttonCmd = button.toLowerCase()
  }
  
  displayObservable() {
    const button = this.button
    
    return Rx.combineLatest(this.value, this.onState, this.offState).pipe(
      Rx.map(([v, on, off]) => [PushRx.buttonCmd(button, v == 0 ? off : on)]))
  }

  subscribe(bundle) {
    const button = this.button
    const processPush = this.processPush
    const newValue = bundle.buttons.pipe(
      Rx.withLatestFrom(this.value),
      Rx.map(([b, v]) => {
        // b: button, state (bool)
        if (b[0] != button) { return false }
        return processPush(b[1] ? 1 : 0, v)
      }), 
      Rx.filter(v => v !== false)
    )
    
    // when new value depends on old value, action subscription needs to happen before value sub
    const sub = Widget.prefixedActions(newValue, [this.buttonCmd, "value"]).subscribe(this.actions)
    // sub.add(this.actions.pipe(
    //   Rx.filter(a => a[1] == "value"),
    //   Rx.map(a => a[2])
    // ).subscribe(this.value))
    sub.add(newValue.subscribe(this.value))
    
    const filteredCommands = Widget.filteredCommands(bundle.commands, [this.buttonCmd])
    sub.add(this.subscribePropertyCommands(filteredCommands, {
      value: this.value,
      onState: this.onState,
      offState: this.offState,
    }))

    return sub
  }
  
  processPush(inValue, currentValue) {
    // ignore button up
    if (!inValue) { return false }
    return 1 - currentValue
  }
  
}

