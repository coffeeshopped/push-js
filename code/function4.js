var PushWidget = require("push.widget").PushWidget

function Widget(patcher) {
  PushWidget.call(this, patcher)

  this.autoBindKnob("start", 0)
  this.autoBindKnob("x1", 1)
  this.autoBindKnob("y1", 2)
  this.autoBindKnob("curve1", 3)
  this.autoBindKnob("x2", 4)
  this.autoBindKnob("y2", 5)
  this.autoBindKnob("curve2", 6)
  this.autoBindKnob("end", 7)
  this.autoBindKnob("curve3", 8)
}

Widget.prototype = Object.create(PushWidget.prototype)

this.exports.Widget = Widget
