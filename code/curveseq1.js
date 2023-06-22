var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushRadio = widgetlib.PushRadio
var PushPad = widgetlib.PushPad
var PushC = require("push.const").PushC

function Widget(patcher) {
  PushWidget.call(this, patcher)
  
  var _this = this
  this.pageRadio = new PushRadio(0, 0, 5)
  // selectPage defined by super
  this.pageRadio.listener = function(value) { _this.selectPage(value) }
  this.activePage = 0
  
  this.pageWidgets = []
  var w = this.createWidgetForSubpatcherNamed("knob8")
  this.pageWidgets.push(w)
  for (var i=0; i<4; ++i) {
    var w = this.createWidgetForSubpatcherNamed("function" + i)
    this.pageWidgets.push(w)
  }
  
  this.checks = this.createWidgetForSubpatcherNamed("check32")
}

Widget.prototype = Object.create(PushWidget.prototype)

Widget.prototype.linkActivePage = function() {
  this.pageWidgets[this.activePage].link(this.push)
}

Widget.prototype.unlinkActivePage = function() {
  this.pageWidgets[this.activePage].unlink()
}

Widget.prototype.link = function(push) {
  this.push = push
  this.pageRadio.link(push)
  this.checks.link(push)
  this.linkActivePage()
}

Widget.prototype.unlink = function(push) {
  this.checks.unlink()
  this.pageRadio.unlink()
  this.unlinkActivePage()
}


this.exports.Widget = Widget
