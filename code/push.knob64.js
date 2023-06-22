const Push = require("./push")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./push.widget')

// returns Push draw msgs for displaying the knob  
function display(slot, label, value) {
  return displayLabel(slot, label).concat(displayValue(slot, value))    
}

function displayLabel(slot, label) {
  return [['displayText', 0, slot, label]]
}

function displayValue(slot, value) {
  return [['displayText', 1, slot, value + ""]]
}

function adjustValue(value, inc, min, max) {
  const v = value + inc
  return v < min ? min : (v > max ? max : v)
}

module.exports = class extends Widget {
  
  knobs = [
    [], [], [], [], [], [], [], [], 
    // new Knob(7, "Huh"),
  ]
  
  pager = new Pager(1)

  slot = new BehaviorSubject(0)
  label = new BehaviorSubject("knob.")
  value = new BehaviorSubject(0)
  min = new BehaviorSubject(0)
  max = new BehaviorSubject(127)
  inc = new BehaviorSubject(1)
  
  constructor(slot, label) {
    this.slot.next(slot)
    this.label.next(label)
  }
  
  displayLabelObservable() {
    const latest = Rx.combineLatest([this.slot, this.label])
    return latest.pipe(Rx.map(a => displayLabel(...a)))
  }

  displayValueObservable() {
    const latest = Rx.combineLatest([this.slot, this.value])
    return latest.pipe(Rx.map(a => displayValue(...a)))
  }
  
  // const knob = Math.max(Math.min(7, event[1] - 71), 0)

  turnsSubscribe(turns) {
    const _this = this
    const latest = Rx.withLatestFrom(this.value, this.inc, this.min, this.max, this.slot)
    const sub = turns.pipe(latest, Rx.map(([turn, v, inc, min, max, slot]) => {
      if (turn[0] - Push.Knob.BIG_0 != slot) { return false }
      
      return adjustValue(v, inc * turn[1], min, max)
    })).subscribe(newVal => {
      if (newVal === false) { return }
      // we don't actually update our own value
      // instead, send out an action proposing what the new value *should* be
      // logic outside of the knob should feed this new value in, if successful, which will trigger UI updates
      _this.action.next(["value", newVal])
    })
    return sub
  }
  
  createLinkSubscriptions(pushRx) {
    pager.link(pushRx)
    
    const _this = this
    const sub = pager.value.subscribe(v => {
      this.linkPage(v)
    })
    
    return sub
  }
  
  unlinkChildren() {
    pager.unlink()
  }
  
  linkPage(v) {
    // unlink previous page if needed
    for (let i=0; i<8; ++i) {
      
    }
    
    if (v < 0) { return }
    
    
  }
  
}


let displays = [state.pager.displayObservable()]

for (let i=0; i<8; ++i) {
  displays.push(state.knobs[i].displayLabelObservable())
  displays.push(state.knobs[i].displayValueObservable())
  
  state.knobs[i].turnsSubscribe(pushEvents.turns)
  state.knobs[i].action.subscribe(evt => {
    maxAPI.outlet(["knob", i, evt[1]])
  })  
}

state.pager.buttonSubscribe(pushEvents.buttons)

Rx.merge(...displays).subscribe(cmds => {
  // console.log(cmds)
  cmds.forEach(cmd => {
    switch (cmd[0]) {
      case "displayText":
        push.displayText(...cmd.slice(1))
        break
      case "displayButton":
        push.displayButton(...cmd.slice(1))
        break
    }
  })
})