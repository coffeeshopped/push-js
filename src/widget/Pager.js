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
      const rowMin = row == 0 ? 0x14 : 0x66
      const rowMax = row == 0 ? 0x1b : 0x6d
      switch (cmd[0]) {
        case 'buttons':
          // b: button, state
          const i = cmd[1] // button index
          const v = cmd[2] // value (0=up, 1=down)
          
          // ignore button up
          const selected = i - rowMin
          if (v && i >= rowMin && i <= rowMax && selected < pageCount) { 
            state.value = selected
          }
          return state
        break
      }
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
        }
      }
    ],
  }
}
