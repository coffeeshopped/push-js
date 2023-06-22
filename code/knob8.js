var PushWidget = require("push.widget").PushWidget

function Widget(patcher) {
  PushWidget.call(this, patcher)

  this.autoBindKnob("knob0", 0)
  this.autoBindKnob("knob1", 1)
  this.autoBindKnob("knob2", 2)
  this.autoBindKnob("knob3", 3)
  this.autoBindKnob("knob4", 4)
  this.autoBindKnob("knob5", 5)
  this.autoBindKnob("knob6", 6)
  this.autoBindKnob("knob7", 7)
}

Widget.prototype = Object.create(PushWidget.prototype)

this.exports.Widget = Widget
