import { knob } from "./knob.js"
import { blankSlot } from "./blankSlot.js"

export function knobPage(knobCount) {
	const children = Array(8).fill().map((_, i) => {
    return i < knobCount ? knob(i, { label: `Knob ${i}` }) : blankSlot(i)
  })
  const childrenObj = { }
  for (let i=0; i<8; ++i) {
    childrenObj[`c${i}`] =  i < knobCount ? knob(i, { label: `Knob ${i}` }) : blankSlot(i)
  }
  return {
    children: childrenObj,
    display: children.flatMap(child => child.display),
  }
}