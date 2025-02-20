
export const knob = (slot, initState) => ({
  // the input sources requested
  inputs: {
    knob: {
      type: 'knob',
      index: slot,
    },
  },
  // a fn that is passed the requested inputs and returns an Observable
  next: (state, cmd) => {
    switch (cmd[0]) {
      case 'knob':
        const v = state.value + state.inc * cmd[1]
        state.value = v < state.min ? state.min : (v > state.max ? state.max : v)
        break
      case 'set':
        state.value = cmd[1]
        break
    }
    return state
  },
  state: Object.assign({
    label: 'Knob',
    min: 0,
    max: 127,
    inc: 1,
    value: 0,
  }, initState),
  // the requested display (output) resources on the Push
  display: [
    {
      type: 'text-slot',
      row: 0,
      slot: slot,
      text: s => s.label,
    },
    {
      type: 'text-slot',
      row: 1,
      slot: slot,
      text: s => `${s.value}`,
    },
    {
      type: 'text-slot',
      row: 2,
      slot: slot,
      text: s => {
        const pct = Math.max(0.0, Math.min((s.value - s.min) / (s.max - s.min), 1.0))
        const bars = Math.floor(pct * 16.0)
        const doubleBars = Math.floor(bars / 2)
        const singleBars = bars % 2
        const dashes = 8 - (doubleBars + singleBars)
        return "║".repeat(doubleBars) + "├".repeat(singleBars) + "─".repeat(dashes)
      },
    },
  ],
})