import * as Rx from 'rxjs'
const BehaviorSubject = Rx.BehaviorSubject

import { Push } from "../push.js"
import { PushRx } from "../push.rx.js"
import { Widget } from './Widget.js'


export class Knob extends Widget {
  
  // turns: increments (+/-) from the hardware knob
  make(slot, initState) {
    return {
      inputs: {
        knob: {
          type: 'topknob',
          index: slot,
        },
        cmds: {
          type: 'cmd',
        },
      },
      state: (inputs) => {
        // translate knob turns into text cmds
        const turnCmds = inputs.knob.pipe(
          Rx.map(turn => ['inc', turn])
        )
        return Rx.merge(turnCmds, input.cmds).pipe(
          Rx.scan((state, cmd) => {
            switch (cmd[0]) {
              case 'inc':
                const v = state.value + state.inc * cmd[1]
                state.value = v < state.min ? state.min : (v > state.max ? state.max : v)
                break
              case 'set':
                state.value = cmd[1]
                break
            }
            return state
          }, initState || {
            label: 'Knob',
            min: 0,
            max: 127,
            inc: 1,
            value: 0,
          })
        )
      },
      display: [
        {
          type: 'text-slot',
          row: 0,
          slot: slot,
          text: state.pipe(Rx.map(s => s.label)),
        },
        {
          type: 'text-slot',
          row: 1,
          slot: slot,
          text: state.pipe(Rx.map(s => `${s.value}`)),
        },
        {
          type: 'text-slot',
          row: 2,
          slot: slot,
          text: state.pipe(
            Rx.map(s => {
              const pct = Math.max(0.0, Math.min((s.value - s.min) / (s.max - s.min), 1.0))
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
  
  
}

