const Push = require("../push")
const PushRx = require("../push.rx")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./widget')

module.exports = class extends Widget {
  
  // the lower-left pad that the widget starts at
  origin = new BehaviorSubject([0,0])
  
  rows = new BehaviorSubject(1)
  cols = new BehaviorSubject(1)
  
  // fn: (x,y) => pad state
  onState = new Rx.BehaviorSubject((x, y) => 0xffffff)
  offState = new Rx.BehaviorSubject((x, y) => 0x111111)

  value = new BehaviorSubject(0)
  
  constructor(origin, rows, cols) {
    super()
    this.origin.next(origin)
    this.rows.next(rows)
    this.cols.next(cols)
  }
  
  displayObservable() {
    const latest = Rx.combineLatest(this.origin, this.rows, this.cols, this.value, this.onState, this.offState)
    return latest.pipe(
      Rx.map(([o, r, c, v, on, off]) => {
        const cmds = []
        for (let x = 0; x<c; ++x) {
          for (let y = 0; y<r; ++y) {
            const stateFn = v == x + y * c ? on : off
            cmds.push(PushRx.fullPadCmd(x+o[0], y+o[1], stateFn(x, y)))
          }
        }
        return cmds
      })
    )
  }

  subscribe(bundle) {
    // each time a turn event comes in, if it's the knob we're watching, output what the adjusted value should be
    // based on inc, max, min
    const slot = this.slot
    const latest = Rx.withLatestFrom(this.origin, this.rows, this.cols, this.value)
    
    const adjustedValue = bundle.pads.pipe(latest, Rx.map(([pad, o, r, c, v]) => {
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
      origin: this.origin,
      rows: this.rows,
      cols: this.cols,
      onState: this.onState,
      offState: this.offState,
      value: this.value,
    }))
        
    return sub
  }
  
  
}

