
module.exports = class {
  
  // TODO: what character in the text buffer represents transparency? (for merging)
  
  // text buffers will be stored as numbers
  // 128 == transparent
  text = [null, null, null, null]
    
  // ↑↓≡├┤║─¤¦°ÄÇÖÜßàäçèéêîñö÷øüь…█→←
  constructor() {
    
  }
  
  // returns a new buffer, merging the contents of another buffer "on top" of this buffer
  // any transparent areas of "top" text buffers won't "shadow" this buffer.
  // for everything else, any existing "top" content will replace/shadow this content
  merge(top) {
    
  }
  
  // takes a display command and merges its content into this buffer
  addCommand(cmd) {
    switch (cmd[0]) {
      case 'textSlot':
        break
      case 'textLine':
        break
    }
  }
  
  copy() {
    
  }
  
  // returns an array of display commands to render this buffer
  render() {
    // iterate through all props and turn into display commands
    const cmds = []
    
    for (const key in this) {
      if (key == "text") {
        for (let i=0; i<4; ++i) {
          const line = this.text[i]
          if (!line) { continue }
          cmds.push(['textLine', i, line])
        }
      }
      else {
        
      }
      
    }
    
    return cmds
  }
  
}