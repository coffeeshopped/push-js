
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

  subscribe(bundle) {
    const latest = Rx.withLatestFrom(this.value, this.pageCount)
    const newPage = bundle.buttons.pipe(latest, Rx.map(([b, value, pageCount]) => {
      // b: button, state
      
      // ignore button up
      if (!b[1]) { return -1 }
      if (b[0] < 0x14 && b[0] > 0x1b) { return -1 }
      
      const selected = b[0] - 0x14
      
      if (selected >= pageCount) { return -1 }
      
      return selected
    }), Rx.filter(v => v >= 0))
    
    const sub = newPage.subscribe(this.value)
    sub.add(Widget.prefixedActions(newPage, ["value"]).subscribe(this.actions))
    
    sub.add(this.subscribePropertyCommands(bundle.commands, {
      value: this.value,
      pageCount: this.pageCount,
    }))

    return sub
  }
  
}

