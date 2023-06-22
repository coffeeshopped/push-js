var PushC = require("push.const").PushC
var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushPad = widgetlib.PushPad

function Widget(patcher, options) {
  PushWidget.call(this, patcher)
  options = options || {
    row: 0,
    col: 0
  }  

  this.pad = new PushPad(options.row, options.col)
  var _this = this
  this.pad.listener = function(value) { _this.padInput(value); }
  
  this.modalKnobs = []
  this.modalKnobs.push(this.createBoundKnob("p0", 0))
  this.modalKnobs.push(this.createBoundKnob("p1", 1))
  this.modalKnobs.push(this.createBoundKnob("p2", 2))
  this.modalKnobs.push(this.createBoundKnob("p3", 3))
  this.isModal = false
}

Widget.prototype = Object.create(PushWidget.prototype)

Widget.prototype.padInput = function(value) {
  if (value > 0) {
    this.padUpShouldToggle = true
    this.padToggleTask = new Task(this.enterPadModal, this)
    this.padToggleTask.schedule(200)
  }
  else {
    // this can be called by the button release from a push.hub linking the widget!
    // this check will make that scenario just return
    if (!this.padToggleTask) { return }
    
    this.padToggleTask.cancel()
    this.padToggleTask.freepeer()
    if (this.padUpShouldToggle) {
      // toggle the checkbox
      var l = this.pad.maxobjListener
      l.setvalue(1 - l.getvalue())
    }
    this.exitPadModal()
  }
}

Widget.prototype.enterPadModal = function() {
  this.padUpShouldToggle = false
  this.isModal = true
  
  // if the toggle was off, turn it on
  var l = this.pad.maxobjListener
  if (l.getvalue() == 0) {
    l.setvalue(1)
  }
  
  for (var i=0; i<this.modalKnobs.length; ++i) {
    this.modalKnobs[i].link(this.push)
  }
}

Widget.prototype.exitPadModal = function() {
  if (!this.isModal) { return }
  for (var i=0; i<this.modalKnobs.length; ++i) {
    this.modalKnobs[i].unlink(this.push)
  }
}

Widget.prototype.displayPad = function(value) {
  var state = value == 0 ? PushC.PState.off : PushC.PState.on
  this.pad.displayValue(state)
}

Widget.prototype.link = function(push) {
  this.push = push
  this.pad.link(push)
  
  var _this = this
  this.pad.maxobjListener = new MaxobjListener(this.patcher.getnamed("on"), function(data) {
    _this.displayPad(data.value)
  })
  this.displayPad(this.pad.maxobjListener.getvalue())
  
  this.highlightListener = new MaxobjListener(this.patcher.getnamed("highlight"), "hidden", function(data) {
    if (data.value == 1) {
      // unhighlight. show normal state
      _this.displayPad(_this.pad.maxobjListener.getvalue())
    }
    else {
      // highlight
      _this.pad.displayValue(80)
    }
  })

}

Widget.prototype.unlink = function() {
  this.pad.unlink()
  
  if (this.pad.maxobjListener) {
    this.pad.maxobjListener.maxobject = null
    delete this.pad.maxobjListener
  }
  
  if (this.highlightListener) {
    this.highlightListener.maxobj = null
    delete this.highlightListener
  }
}

this.exports.Widget = Widget
