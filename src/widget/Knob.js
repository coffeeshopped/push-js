import * as Rx from 'rxjs'
const BehaviorSubject = Rx.BehaviorSubject

import { Push } from "../push.js"
import { PushRx } from "../push.rx.js"
import { Widget } from './Widget.js'


export class Knob extends Widget {
  
  // turns: increments (+/-) from the hardware knob
  // TODO: add commands observable that gets listened to.
  make(slot, label, min, max, inc, turns, cmds) {
    
    const value = turns.pipe(
      Rx.withLatestFrom(inc, min, max),
      Rx.map([turn, inc, min, max]),
      Rx.scan((value, [turn, inc, min, max]) => {
        const v = value + inc * turn
        return v < min ? min : (v > max ? max : v)
      }, 0)
    )

    return {
      value: value,
      display: [
        {
          type: 'text-slot',
          row: 0,
          slot: slot,
          text: label.pipe(
            Rx.map(l => l)
          )
        },
        {
          type: 'text-slot',
          row: 1,
          slot: slot,
          text: value.pipe(
            Rx.map(v => `${v}`)
          )
        },
        {
          type: 'text-slot',
          row: 2,
          slot: slot,
          text: Rx.combineLatest(value, min, max).pipe(
            Rx.map(([v, min, max]) => {
              const pct = Math.max(0.0, Math.min((v - min) / (max - min), 1.0))
              const bars = Math.floor(pct * 16.0)
              const doubleBars = Math.floor(bars / 2)
              const singleBars = bars % 2
              const dashes = 8 - (doubleBars + singleBars)
              return "║".repeat(doubleBars) + "├".repeat(singleBars) + "─".repeat(dashes)
            })
          )
,
        },
      ]
    }
  }
  

  subscribe(bundle) {
    // each time a turn event comes in, if it's the knob we're watching, output what the adjusted value should be
    // based on inc, max, min
    const slot = this.slot
    const latest = Rx.withLatestFrom(this.value, this.inc, this.min, this.max, this.hidden)
        
    // TODO: add option to not self-update value
    const sub = Widget.prefixedActions(adjustedValue, ["knob", slot, "value"]).subscribe(this.actions)
    sub.add(adjustedValue.subscribe(this.value))
    return sub
  }
  
  
}

