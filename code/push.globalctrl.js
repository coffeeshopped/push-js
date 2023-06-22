var Push = require("push").Push
var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushPad = widgetlib.PushPad
var PushToggle = widgetlib.PushToggle

function PushGlobalCtrl(patcher, options) {
  PushWidget.call(this, patcher);
  this.hub = options.hub
  
  var _this = this
  
  this.playButton = new PushToggle(PushC.Ctrl.play)
  this.playState = 0
  this.playButton.listener = function(value) {
    _this.playState = 1 - _this.playState
    messnamed("pushplayout", _this.playState)
  }

}

PushGlobalCtrl.prototype = Object.create(PushWidget.prototype)

PushGlobalCtrl.prototype.link = function(push) {
	this.push = push
  var _this = this
		
  // set up the Master button (links the hub)
  this.push.displayButton(PushC.Ctrl.master, PushC.BState.on);
  this.push.addControlListener(PushC.Ctrl.master, function(value) {
	  // only on button down
  	if (value == 0) { return }
  	_this.hub.link(push)
  })
  
  // set up play/pause button
	this.playButton.link(push)
}

PushGlobalCtrl.prototype.unlink = function() {
  
  this.push.displayButton(PushC.Ctrl.master, PushC.BState.off);
  this.push.removeControlListener(PushC.Ctrl.master)

  this.playButton.unlink()

  this.push = null
}

exports.PushGlobalCtrl = PushGlobalCtrl