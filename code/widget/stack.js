const Push = require("../push")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./widget')
const Knob = require('./knob')
const Pager = require('./Pager')

module.exports = class extends Widget {
  
  widgets = []
  displayObs = new Rx.BehaviorSubject([])

  constructor() {
    super()
  }
  
  displayObservable() {
    return this.displayObs
  }
  
  subscribe(bundle) {
    // commands:
    // [push, widget] push a widget onto the stack
    // [pop] pop a widget from the stack
    // [top, ...] send a command to the top widget on the stack
    const _this = this

    const subBundle = Object.assign({}, bundle)
    subBundle.commands = bundle.commands.pipe(
      Rx.filter(cmd => cmd[0] !== 'stack')
    )
    
    const widgetStack = Widget.filteredCommands(bundle.commands, ["stack"]).pipe(
      Rx.scan((acc, cmd) => {
        switch (cmd[0]) {
          case 'push':
            // unsubscribe the top widget, if it exists
            // subscribe the new top widget
            const newTop = cmd[1]
            // push the new widget
            return [newTop].concat(acc)
          case 'pop':
            return acc.slice(1)
        }
      }, [])
    )

    const sub = widgetStack.pipe(
      Rx.scan((acc, ws) => {
        if (acc) { acc.unsubscribe() }
        
        if (ws.length == 0) { return null }
  
        const topWidget = ws[0]
        const newSub = topWidget.subscribe(subBundle)
        
        // actions
        newSub.add(topWidget.actions.subscribe(_this.actions))
                
        return newSub
      }, null)
    ).subscribe()
    
    sub.add(widgetStack.pipe(
      Rx.switchMap(ws => {
        return ws.length == 0 ? Rx.EMPTY : ws[0].displayObservable()
      })
    ).subscribe(this.displayObs))
    
    return sub
  }
  
  
}
