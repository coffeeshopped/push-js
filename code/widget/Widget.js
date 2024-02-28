const Rx = require('rxjs')

module.exports = class {
  // event output
  actions = new Rx.Subject()
  
  /**
   * PushRx drawing commands to render this Widget.
   * @return {Observable<[Array]>} An Observable of arrays of commands
   */
  displayObservable() { return Rx.of([]) }
  
  /**
   * PushRx drawing commands to remove this widget. Resets every Push UI element within
   * the bounds of this Widget.
   * @return {[Array]} An array of commands
   */
  displayCleanup() { return [] }
  
  /*
   * subscribes the widget to listen to "bundled" events. bundle object:
   * {
   *   turns: Push knob turn events
   *   buttons: Push button press events
   *   touches: Push knob touch events
   *   pads: Push pad press events
   *   commands: Command events. Array of the form [path, value, path, value, etc]
   *             e.g [page 2 knob 0 value 63] might set the value of the first knob on the 3rd *             page to 63
   *             These commands will be sent by code from software (e.g. Max, network comm etc)
   *             whereas all the other events are from the Push.
   * }
   * Note that these streams of Push events are not necessarily the raw stream of all events from the Push. Compound widgets will process these event streams in various ways before passing the filtered/modified events down to sub-widgets.
   */
   // should be called by some outside object during the setup phase.
  subscribe(bundle) {
    
  }
  
  subscribePropertyCommands(commands, cmdMap) {
    if (!commands) { return }
    
    const _this = this
    return commands.subscribe(cmd => {
      // command must have at least 2 elements
      if (cmd.length < 2) { return }
      
      // cmdMap must have a Subject matching the command
      const subject = cmdMap[cmd[0]]
      if (!subject) { return }
      
      // pass the command's value to the Subject
      subject.next(cmd[1])
    })
  }
  
  // filter a command observable with an array prefix
  static filteredCommands(commands, pfx) {
    if (!commands) { return null }
    const len = pfx.length
    return commands.pipe(
      Rx.filter(cmd => cmd.length >= len && pfx.every((val, i) => val === cmd[i])),
      Rx.map(cmd => cmd.slice(len))
    )
  }
  
  // return an observable, prefixed
  static prefixedActions(actions, pfx) {
    return actions.pipe(Rx.map(action => pfx.concat(action)))
  }

}


// PushWidget.prototype.autoBindPaged = function(pages) {
//   var _this = this
//   this.pageRadio = new PushRadio(0, 0, pages.length)
//   this.pageRadio.listener = function(value) { _this.selectPage(value) }
//   this.activePage = 0
//   this.pagedCtrls = []
//   for (var page=0; page<pages.length; ++page) {
//     this.pagedCtrls.push([])
//     var names = pages[page]
//     for (var i=0; i<names.length; ++i) {
//       this.pagedCtrls[page].push(this.createBoundKnob(names[i], i))
//     }
//   }
//   
// }
// 
// PushWidget.prototype.selectPage = function(page) {
//   this.unlinkActivePage()
//   this.activePage = page
//   if (!this.push) { return }
//   this.linkActivePage()
// }
// 
// PushWidget.prototype.linkActivePage = function() {
//   var linkCtrls = this.pagedCtrls[this.activePage]
//   for (var i=0; i<linkCtrls.length; ++i) {
//     linkCtrls[i].link(this.push)
//   }
// }
// 
// PushWidget.prototype.unlinkActivePage = function() {
//   var unlinkCtrls = this.pagedCtrls[this.activePage]
//   for (var i=0; i<unlinkCtrls.length; ++i) {
//     unlinkCtrls[i].unlink()
//   }
// }
// 
// // default implementations of link and unlink
// // for widgets that only use autoBind
// PushWidget.prototype.link = function(push) {
//   this.linkAutoBound(push)
// }
// 
// PushWidget.prototype.unlink = function(push) {
//   this.unlinkAutoBound()
// }
// 
// exports.PushWidget = PushWidget
// 
// 
// 
// // PUSH RADIO
// 
// function PushRadio(row, col, count) {
//   this.row = row
//   this.col = col
//   this.count = count
//   this.active = 0
//   this.push = null
//   this.listener = null
// }
// 
// PushRadio.prototype.pushButtonNumber = function(index) {
//   var col = this.col + index
//   var row = this.row
//   if (col > 7) {
//     col = col - 8
//     row++
//   }
//   var button = (row == 0 ? "alpha" : "beta") + col
//   return PushC.Ctrl[button]
// }
// 
// PushRadio.prototype.link = function(push) {
//   this.push = push
//   var _this = this;
//   for (var i=0; i<this.count; ++i) {
//     // do initial button display
//     var state = i == this.active ? "on" : "dim"
//     var buttonNumber = this.pushButtonNumber(i)
//     push.displayButton(buttonNumber, PushC.BState[state]);
// 
//     // add a listener to this button
//     // need to do this in a function in order to scope var index correctly
//     // otherwise all the closures end up referencing the same final value of i.
//     (function() {
//       var index = i;
//       push.addControlListener(buttonNumber, function(value) {
//         if (value == 0) { return; }
//         _this.setActive(index);
//       });
//     })();
//   }
// }
// 
// PushRadio.prototype.unlink = function() {
//   if (!this.push) { return }
//   
//   for (var i=0; i<this.count; ++i) {
//     this.push.displayButton(this.pushButtonNumber(i), PushC.BState.off);
//   }
//   this.push = null
// }
// 
// PushRadio.prototype.setActive = function(newActive) {
//   this.push.displayButton(this.pushButtonNumber(this.active), PushC.BState.dim)
//   this.active = newActive
//   this.push.displayButton(this.pushButtonNumber(this.active), PushC.BState.on)
//   if (this.listener) { this.listener(this.active) }
// }
// 
// exports.PushRadio = PushRadio
// 
// 
// // PUSH TOGGLE
// 
// function PushToggle(button) {
//   this.button = button
//   this.value = 0
// }
// 
// PushToggle.prototype.bind = function(maxobject) {
//   this.maxobject = maxobject
// }
// 
// PushToggle.prototype.displayValue = function(value) {
//   var v = value == 0 ? PushC.BState.dim : PushC.BState.on
//   this.push.displayButton(this.button, v)
// }
// 
// PushToggle.prototype.link = function(push) {
//   this.push = push
//   var _this = this;
// 
//   // create the max object listener
//   if (this.maxobject) {
//     this.maxobjListener = new MaxobjListener(this.maxobject, function(data) {
//       _this.displayValue(data.value)
//     })
//     // display the button
//     this.displayValue(this.maxobjListener.getvalue());
//   }
//   else {
//     this.displayValue(this.value);
//   }
// 
// 
//   // add a listener for the knob value
//   this.push.addControlListener(this.button, function(value) {
//     if (value == 0) { return }
//     if (_this.maxobjListener) {
//       _this.maxobjListener.setvalue(1 - _this.maxobjListener.getvalue())
//     }
//     else {
//       _this.setValue(1 - _this.value)
//     }
//   })
// }
// 
// PushToggle.prototype.unlink = function() {
//   if (this.maxobjListener) {
//     this.maxobjListener.maxobject = null
//     delete this.maxobjListener
//   }
// 
//   this.push.removeControlListener(this.button)
//   this.push.displayButton(this.button, PushC.BState.off)
// 
//   this.push = null
// }
// 
// // only should be used if this knob isn't bound to a max object
// PushToggle.prototype.setValue = function(newValue) {
//   this.value = newValue
//   this.displayValue(this.value)
//   if (this.listener) { this.listener(this.value) }
// }
// 
// exports.PushToggle = PushToggle
// 
// 
// // PUSH PAD
// 
// function PushPad(row, col) {
//   this.row = row
//   this.col = col
//   this.note = PushC.noteForPad(row, col)
//   this.value = 0
// }
// 
// PushPad.prototype.displayValue = function(state) {
//   this.push.displayPad(this.row, this.col, state)
// }
// 
// PushPad.prototype.link = function(push) {
//   this.push = push
//   var _this = this;
// 
//   this.displayValue(this.value)
// 
//   this.push.addNoteListener(this.note, function(value) {
//     if (_this.listener) { _this.listener(value) }
//   })
// }
// 
// PushPad.prototype.unlink = function() {
//   if (this.push) {
//     this.push.removeNoteListener(this.note);
//     this.displayValue(PushC.PState.off);
//   }
// 
//   this.push = null
// }
// 
// exports.PushPad = PushPad
// 
// 
// // PUSH WIDGET STACK
// 
// function PushWidgetStack() {
//   this.widgets = []
// }
// 
// PushWidgetStack.prototype.pushWidget = function(widget) {
//   var t = this.top()
//   if (t) { t.unlink(); }
// 
//   this.widgets.push(widget)
//   if (this.push) {
//     widget.link(this.push)
//   }
// }
// 
// PushWidgetStack.prototype.pop = function(widget) {
//   // if widget is passed, only pop if top matches it.
//   if (widget && this.top() != widget) { return }
//   
//   if (this.widgets.length == 0) { return }
//   var widget = this.widgets.pop()
//   widget.unlink()
//   
//   if (this.push && this.widgets.length > 0) {
//     this.top().link(this.push)
//   }
// }
// 
// PushWidgetStack.prototype.top = function() {
//   if (this.widgets.length == 0) { return null }
//   return this.widgets[this.widgets.length - 1]
// }
// 
// PushWidgetStack.prototype.clear = function() {
//   var t = this.top()
//   if (t) { t.unlink(); }
//   this.widgets = []
// }
// 
// PushWidgetStack.prototype.link = function(push) {
//   this.push = push
//   var t = this.top()
//   if (t) { t.link(this.push); }
// }
// 
// PushWidgetStack.prototype.unlink = function() {
//   var t = this.top()
//   if (t) { t.unlink(); }
//   this.push = null
// }
// 
// exports.PushWidgetStack = PushWidgetStack
