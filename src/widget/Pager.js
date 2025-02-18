import { Push } from "../push.js"

export function makePager(row, pageCount, initState) {
  return {
    inputs: {
      buttons: {
        type: 'button-row',
        row: row,
      }
    },
    next: (state, cmd) => {
      switch (cmd[0]) {
        case 'buttons':
          // b: button, state
          const i = cmd[1] // button index 0..7
          const v = cmd[2] // value (false=up, true=down)
          // ignore button up
          if (v && i >= 0 && i < pageCount) { 
            state.value = i
          }
        break
      }
      return state
    },
    state: initState || {
      value: 0,
    },
    display: [
      {
        type: 'button-row',
        row: row,
        values: s => Array(8).fill().map((_, i) => {
          return i >= pageCount ? Push.BState.OFF : (i == s.value ? Push.BState.ON : Push.BState.DIM)
        })
      }
    ],
  }
}
