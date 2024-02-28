// on link: lights up pads corresponding to available preset slots for loading
// pad press loads preset
// must be tied to a pattrstorage

var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushPad = widgetlib.PushPad

function PushPresetLoader(patcher, options) {
  PushWidget.call(this, patcher);
  
  this.pattrstorage = options.pattrstorage
    
  var _this = this
  this.selectButtons = []
  for (var col=0; col<8; ++col) {
    this.selectButtons.push([])
    for (var row=0; row<8; ++row) {
      var button = new PushPad(row, col);
      this.selectButtons[col].push(button);
      (function(row, col) {
        button.listener = function(value) {
          if (value > 0) { return } // only on button up
          _this.buttonSelected(row, col);
        }
      }).call(this, row, col);
    }
  }
}

PushPresetLoader.prototype = Object.create(PushWidget.prototype)

PushPresetLoader.prototype.buttonSelected = function(row, col) {
  this.pattrstorage.message(row * 8 + col + 1)
  this.pattrstorage.message("getslotlist")  
  this.pattrstorage.message("getcurrent")
}

// push arg is just for consistency here. But this.push is set in initPush()
PushPresetLoader.prototype.link = function(push) {
  // unlink in case we're getting linked twice
  if (this.push) {
    this.unlink()
  }
    
  this.push = push
  // request slots for display
  this.pattrstorage.message("getslotlist")  
  // get the current preset
  this.pattrstorage.message("getcurrent")
}

PushPresetLoader.prototype.slotList = function(slots) {
  if (!this.push) { return }

  for (var i=0; i<slots.length; ++i) {
    var slot = slots[i]
    var row = Math.floor((slot - 1) / 8)
    var col = (slot - 1) % 8

    var button = this.selectButtons[col][row];
    button.link(this.push);
    button.displayValue(30);
  }      
}

PushPresetLoader.prototype.current = function(current) {
  if (!this.push) { return }
  if (current < 0) { return }

  var row = Math.floor((current - 1) / 8)
  var col = (current - 1) % 8

  var button = this.selectButtons[col][row];
  button.displayValue(35);
}

PushPresetLoader.prototype.unlink = function() {
  
  for (var col=0; col<8; ++col) {
    for (var row=0; row<8; ++row) {
      this.selectButtons[col][row].unlink();
    }
  }

  this.push = null;
}

this.exports.PushPresetLoader = PushPresetLoader
