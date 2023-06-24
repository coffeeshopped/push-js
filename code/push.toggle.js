
const Push = require("./push")
const PushRx = require("./push.rx")
const Rx = require('rxjs')
const Widget = require('./push.widget')

module.exports = class extends Widget {
  
  value = new Rx.BehaviorSubject(0) // 0 or 1
  onState = new Rx.BehaviorSubject(Push.BState.ON)
  offState = new Rx.BehaviorSubject(Push.BState.OFF)
  
  // button: string value corresponding to Push constant
  constructor(button) {
    super()
    this.button = Push.Button[button]
  }
  
  displayObservable() {
    const button = this.button
    
    return Rx.combineLatest(this.value, this.onState, this.offState).pipe(
      Rx.map(([v, on, off]) => [PushRx.buttonCmd(button, v == 0 ? off : on)]))
  }

  subscribe(bundle) {
    const button = this.button
    const newValue = bundle.buttons.pipe(
      Rx.withLatestFrom(this.value),
      Rx.map(([b, v]) => {
        // b: button, state
        // ignore button up
        if (!b[1]) { return -1 }
        if (b[0] != button) { return -1 }
              
        return 1 - v
      }), 
      Rx.filter(v => v >= 0)
    )
    
    const sub = newValue.subscribe(this.value)
    sub.add(Widget.prefixedActions(newValue, ["value"]).subscribe(this.actions))
    
    sub.add(this.subscribePropertyCommands(bundle.commands, {
      value: this.value,
      onState: this.onState,
      offState: this.offState,
    }))

    return sub
  }
  
}

