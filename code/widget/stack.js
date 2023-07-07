const Push = require("../push")
const Rx = require('rxjs')
const BehaviorSubject = Rx.BehaviorSubject
const Widget = require('./widget')
const Knob = require('./knob')
const Pager = require('./Pager')

module.exports = class extends Widget {
  
  displayObs = new Rx.BehaviorSubject([])
  
  // [[widget stack], widget-if-popped]
  widgets = new Rx.BehaviorSubject([[], null])

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
        const stack = acc[0]
        switch (cmd[0]) {
          case 'push':
            const newTop = cmd[1]
            // push the new widget
            return [[newTop].concat(stack), null]
          case 'pop':
            // return popped stack, with popped widget
            return stack.length == 0 ? [[], null] : [stack.slice(1), stack[0]]
        }
      }, [[], null]) // [[widget stack], widget-if-popped]
    )

    const sub = widgetStack.pipe(
      Rx.scan((acc, ws) => {
        if (acc) { acc.unsubscribe() }
        
        const stack = ws[0]
        const popped = ws[1]

        if (stack.length == 0) { return null }
  
        const topWidget = stack[0]
        
        // subscribe top widget to bundle, including un-prefixed commands
        const newSub = topWidget.subscribe(subBundle)
        
        // pass actions from top widget to stack's actions (no prefix?)
        newSub.add(topWidget.actions.subscribe(_this.actions))
                
        return newSub
      }, null)
    ).subscribe()
    
    sub.add(widgetStack.pipe(
      Rx.switchMap(ws => {
        const stack = ws[0]
        const popped = ws[1]
        
        // first, do cleanup from any popped widget
        const cleanup = popped ? Rx.of(popped.displayCleanup()) : Rx.EMPTY
        // then, draw the new top widget
        const next = stack.length == 0 ? Rx.EMPTY : stack[0].displayObservable()
        return Rx.concat(cleanup, next)
      })
    ).subscribe(this.displayObs))
    
    sub.add(widgetStack.subscribe(this.widgets))
    
    return sub
  }
  
  
}
