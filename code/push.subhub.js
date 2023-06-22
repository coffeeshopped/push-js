// A widget that can open the windows of subpatchers
// hub.initIndex() initializes all the subpatchers
// link() brings up the selector for a subpatcher

var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushPad = widgetlib.PushPad

function PushSubHub(patcher, options) {
  PushWidget.call(this, patcher);
  
  // subpatcherIndex is a 2D array of scripting names of max objects
  // each object should be a subpatcher
  this.subpatcherIndex = options.index;
  
  var _this = this
  this.selectButtons = []
  for (var col=0; col<8; ++col) {
    this.selectButtons.push([])
    for (var row=0; row<4; ++row) {
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

PushSubHub.prototype = Object.create(PushWidget.prototype)

PushSubHub.prototype.buttonSelected = function(row, col) {
  this.unlink()
  
  // open the subpatcher
  var subpatcherName = this.subpatcherIndex[col][row]
  this.patcher.getnamed(subpatcherName).message("front")
}

// push arg is just for consistency here. But this.push is set in initPush()
PushSubHub.prototype.link = function(push) {
  
  // unlink in case we're getting linked twice
  if (this.push) {
    this.unlink()
  }
  
  this.push = push    
  
  // display index text
  for (var col=0; col<this.subpatcherIndex.length; ++col) {
    var subpatcherCol = this.subpatcherIndex[col]
    for (var row=0; row<subpatcherCol.length; ++row) {
      this.push.displayText(row, col, subpatcherCol[row])

      var button = this.selectButtons[col][row];
      button.link(this.push);
      button.displayValue(50);
    }
  }
  
}

PushSubHub.prototype.unlink = function() {
  
  for (var col=0; col<8; ++col) {
    for (var row=0; row<4; ++row) {
      this.selectButtons[col][row].unlink();
    }
  }

  if (this.push) {
    this.push.initText();
  }  
  
  this.push = null;
}

this.exports.PushSubHub = PushSubHub
