var PushC = require("push.const").PushC
var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushToggle = widgetlib.PushToggle

function PushPlayCtrl(patcher, options) {
  PushWidget.call(this, patcher);
  
  var _this = this  
  this.playButton = new PushToggle(PushC.Ctrl.play)
  this.playState = 0
  this.playButton.listener = function(value) {
    _this.playState = 1 - _this.playState
    messnamed("pushplayout", _this.playState)
  }

}

PushPlayCtrl.prototype = Object.create(PushWidget.prototype)

PushPlayCtrl.prototype.link = function(push) {
  this.push = push
  // set up play/pause button
  this.playButton.link(push)
}

PushPlayCtrl.prototype.unlink = function() {
  this.playButton.unlink()
  this.push = null
}

exports.PushPlayCtrl = PushPlayCtrl