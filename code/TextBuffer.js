
const initTextRow = "                                                                    "  

module.exports = class {
  
  lines = [initTextRow, initTextRow, initTextRow, initTextRow]
  dirty = [true, true, true, true] // all dirty to start with!
    
  constructor() {
    
  }

  setSlotText(row, slot, text) {
    let newRow = this.lines[row]
    let padded = text
    if (text.length > 8) {
      padded = text.slice(0,8)
    }
    else if (text.length < 8) {
      const space = "        "
      padded = text + space.slice(0, 8 - text.length)
    }
    const slotStart = slot * 8 + Math.ceil(slot / 2.0)
    newRow = newRow.slice(0, slotStart) + padded + newRow.slice(slotStart + 8)
    this.lines[row] = newRow
    this.dirty[row] = true
  }
  
  clear() {
    this.lines = [initTextRow, initTextRow, initTextRow, initTextRow]
    this.dirty = [true, true, true, true]
  }
  
  clearTextRow(row) {
    this.lines[row] = initTextRow
    this.dirty[row] = true
  }

  /* Renders the dirty parts of the buffer to the push, and resets dirty flags */
  render(push) {
    for (let i=0; i<4; ++i) {
      if (!this.dirty[i]) { continue }
      push.displayTextLine(i, this.lines[i])    
      this.dirty[i] = false
    }
  }
  
}