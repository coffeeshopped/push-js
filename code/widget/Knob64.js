const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject

const Push = require("../push")
const PushRx = require("../push.rx")
const Widget = require('./Widget')
const Knob = require('./Knob')
const Pager = require('./Pager')

module.exports = class extends Widget {
  
  knobs = []
  pager = new Pager(0, 8)

  constructor() {
    super()
    // create the knobs
    for (let p=0; p<8; ++p) {
      const arr = []
      for (let k=0; k<8; ++k) {
        const knob = new Knob(k, p+"-"+k)
        arr.push(knob)
      }
      this.knobs.push(arr)
    }
  }
  
  displayObservable() {
    // this structure assumes that this.knobs will never change (i.e. all knobs are created at the get-go, I think)
    const knobs = this.knobs
    const kd = this.pager.value.pipe(Rx.switchMap(page => {
      const knobDisplays = knobs[page].map(k => k.displayObservable())
      return Rx.merge(...knobDisplays)
    }))
    return Rx.merge(this.pager.displayObservable(), kd)    
  }
  
  displayCleanup() {
    return this.pager.displayCleanup().concat([PushRx.clearTextCmd()])
  }
  
  subscribe(bundle) {
    const pager = this.pager
    const sub = pager.subscribe(bundle) // pager is always subscribed
    
    const processedCmds = bundle.commands.pipe(
      Rx.mergeMap(cmd => {
        if (cmd.length == 1 && cmd[0] == 'reset') {
          return Rx.from(this.knobs.flatMap((knobPage, p) => {
            return knobPage.map((knob, k) =>  ['page', p, 'knob', k, 'hidden', 1])
          }))
        }
        return Rx.of(cmd)
      })
    )
    
    this.knobs.forEach((knobPage, p) => {
      const pfx = ['page', p]
      const newBundle = {
        turns: pager.value.pipe(Rx.switchMap(page => page == p ? bundle.turns : Rx.EMPTY)),
        commands: Widget.filteredCommands(processedCmds, pfx)
      }

      knobPage.forEach(k => sub.add(k.subscribe(newBundle)))
      
      const knobActions = Rx.merge(...(knobPage.map((k, i) => k.actions)))
      sub.add(Widget.prefixedActions(knobActions, pfx).subscribe(this.actions))

    })

    return sub
  }
  
}
