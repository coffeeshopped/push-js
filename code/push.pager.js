
const Push = require("./push")
const PushRx = require("./push.rx")
const Rx = require('rxjs')
const Widget = require('./push.widget')

function display(value, pageCount) {
  let cmds = []
  for (let i=0; i<8; ++i) {
    const state = i >= pageCount ? Push.BState.OFF : (i == value ? Push.BState.ON : Push.BState.DIM)
    cmds.push(PushRx.buttonCmd(Push.Button["ROW_0_"+i], state))
  }
  return cmds
}

module.exports = class extends Widget {
  
  value = new Rx.BehaviorSubject(0)
  pageCount = new Rx.BehaviorSubject(1)
  
  constructor(pageCount) {
    super()
    this.pageCount.next(pageCount)
  }
  
  displayObservable() {
    const latest = Rx.combineLatest([this.value, this.pageCount])
    return latest.pipe(Rx.map(a => display(...a)))
  }

  buttonSubscribe(buttons) {
    const _this = this
    const latest = Rx.withLatestFrom(this.value, this.pageCount)
    const sub = buttons.pipe(latest, Rx.map(([b, value, pageCount]) => {
      // b: button, state
      
      // ignore button up
      if (!b[1]) { return -1 }
      if (b[0] < 0x14 && b[0] > 0x1b) { return -1 }
      
      const selected = b[0] - 0x14
      
      if (selected >= pageCount) { return -1 }
      
      return selected
    })).subscribe(newVal => {
      if (newVal < 0) { return }
      
      _this.value.next(newVal)
      _this.action.next(["value", newVal])
    })
    return sub
  }
  
  createLinkSubscriptions(pushRx) {
    const sub = this.buttonSubscribe(pushRx.buttons)
  
    sub.add(pushRx.addDisplay(this.displayObservable()))
    
    return sub
  }
  
}

