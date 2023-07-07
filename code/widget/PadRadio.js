const Push = require("../push")
const PushRx = require("../push.rx")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./widget')

function display(origin, rows, cols, value, on, off) {
  const cmds = []
  for (let x = 0; x<cols; ++x) {
    for (let y = 0; y<rows; ++y) {
      const stateFn = value == x + y * cols ? on : off
      cmds.push(PushRx.fullPadCmd(x+origin[0], y+origin[1], stateFn(x, y)))
    }
  }
  return cmds
}

module.exports = class extends Widget {
  
  // the lower-left pad that the widget starts at
  origin = [0,0]
  
  rows = 1
  cols = 1
  
  // fn: (x,y) => pad color
  onState = new Rx.BehaviorSubject((x, y) => 0xffffff)
  offState = new Rx.BehaviorSubject((x, y) => 0x111111)

  value = new BehaviorSubject(0)
  
  constructor(origin, rows, cols) {
    super()
    this.origin = origin
    this.rows = rows
    this.cols = cols
  }
  
  displayObservable() {
    const o = this.origin
    const r = this.rows
    const c = this.cols
    const latest = Rx.combineLatest(this.value, this.onState, this.offState)
    return latest.pipe(
      Rx.map(([v, on, off]) => display(o, r, c, v, on, off))
    )
  }
  
  displayCleanup() {
    return display(this.origin, this.rows, this.cols, -1, () => 0, () => 0)
  }

  subscribe(bundle) {
    const o = this.origin
    const r = this.rows
    const c = this.cols

    const latest = Rx.withLatestFrom(this.value)
    
    const adjustedValue = bundle.pads.pipe(latest, Rx.map(([pad, v]) => {
      // check that pad is within range
      if (pad[0] < o[0] || pad[0] >= o[0] + c) { return false }
      if (pad[1] < o[1] || pad[1] >= o[1] + r) { return false }
      if (pad[2] == 0) { return false } // ignore note off

      return pad[0] - o[0] + (pad[1] - o[1]) * c
    }), Rx.filter(v => v !== false ))
    
    // TODO: add option to not self-update value
    const sub = Widget.prefixedActions(adjustedValue, ["value"]).subscribe(this.actions)
    sub.add(adjustedValue.subscribe(this.value))
    
    // commands
    sub.add(this.subscribePropertyCommands(bundle.commands, {
      onState: this.onState,
      offState: this.offState,
      value: this.value,
    }))
        
    return sub
  }
  
  
}

