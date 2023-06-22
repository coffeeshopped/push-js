var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushRadio = widgetlib.PushRadio
var PushPad = widgetlib.PushPad
var PushC = require("push.const").PushC

function Widget(patcher) {
  PushWidget.call(this, patcher)
  
  this.pitch = patcher.getnamed("pitch")
  this.velo = patcher.getnamed("velo")
  
  var _this = this
  this.pads = []
  var i=0
  for (var row=4; row<8; ++row) {
    for (var col=0; col<8; ++col) {
      (function() {
        var pad = new PushPad(row, col)
        var index = i
        pad.listener = function(value) { _this.padInput(index, value); }        
        _this.pads.push(pad)
      })();
      ++i;
    }
  }
  
}

Widget.prototype = Object.create(PushWidget.prototype)

Widget.prototype.padInput = function(index, velo) {
  this.padDisplay(index, velo)
  var note = 36 + (3 - Math.floor(index / 8)) * 8 + (index % 8)
  this.velo.message(velo)
  this.pitch.message(note)
}

Widget.prototype.padDisplay = function(index, velo) {
  var value = velo == 0 ? 1 : 20
  this.pads[index].displayValue(value)  
}

Widget.prototype.link = function(push) {
  this.push = push
  for (var i=0; i<this.pads.length; ++i) { 
    this.pads[i].link(push)
    this.padDisplay(i, 0)
  }
  
}

Widget.prototype.unlink = function(push) {  
  for (var i=0; i<this.pads.length; ++i) { 
    this.pads[i].unlink()
  }
}


this.exports.Widget = Widget
