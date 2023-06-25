const Toggle = require('./toggle')

module.exports = class extends Toggle {
    
  // // button: string value corresponding to Push constant
  // constructor(button) {
  //   super()
  //   this.button = Push.Button[button]
  //   this.buttonCmd = button.toLowerCase()
  // }
  
  processPush(inValue, currentValue) {
    return inValue
  }
  
}

