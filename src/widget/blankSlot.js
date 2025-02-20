
// blanks out the display for 3 lines in a given slot
// also takes over the corresponding knob to do nothing.
export function blankSlot(slot) {
  return {
    // take over the knob above
    inputs: {
      knob: {
        type: 'knob',
        index: slot,
      },
    },
    next: (state, cmd) => {
      return state
    },
    state: { },
    display: [
      {
        type: 'text-slot',
        row: 0,
        slot: slot,
        text: s => "",
      },
      {
        type: 'text-slot',
        row: 1,
        slot: slot,
        text: s => "",
      },
      {
        type: 'text-slot',
        row: 2,
        slot: slot,
        text: s => "",
      },
    ]
  }
}