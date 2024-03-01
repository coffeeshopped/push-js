import * as Rx from 'rxjs'

import { Push } from "../push.js"
import { PushRx } from "../push.rx.js"
import { Widget } from './Widget.js'

function display(row, value, pageCount) {
  let cmds = []
  for (let i=0; i<8; ++i) {
    const state = i >= pageCount ? Push.BState.OFF : (i == value ? Push.BState.ON : Push.BState.DIM)
    cmds.push(PushRx.buttonCmd(Push.Button["ROW_"+row+"_"+i], state))
  }
  return cmds
}

export class Pager extends Widget {
  
  value = new Rx.BehaviorSubject(0)
  pageCount = new Rx.BehaviorSubject(1)
  row = 0
  
  constructor(row, pageCount) {
    super()
    this.row = row
    this.pageCount.next(pageCount)
  }
  
  displayObservable() {
    const row = this.row
    const latest = Rx.combineLatest([this.value, this.pageCount])
    return latest.pipe(Rx.map(a => display(row, ...a)))
  }
  
  displayCleanup() {
    return display(this.row, -1, 0)
  }

  subscribe(bundle) {
    const latest = Rx.withLatestFrom(this.value, this.pageCount)
    const rowMin = this.row == 0 ? 0x14 : 0x66
    const rowMax = this.row == 0 ? 0x1b : 0x6d
    const newPage = bundle.buttons.pipe(latest, Rx.map(([b, value, pageCount]) => {
      // b: button, state
      
      // ignore button up
      if (!b[1]) { return -1 }
      if (b[0] < rowMin && b[0] > rowMax) { return -1 }
      
      const selected = b[0] - rowMin
      
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

