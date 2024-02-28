// A widget that maintains a bunch of other widgets, based on a passed index
// hub.initIndex() initializes all the widgets
// link() brings up the selector for a widget

var Push = require("push").Push
var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushPad = widgetlib.PushPad
var PushGlobalCtrl = require("push.globalctrl").PushGlobalCtrl

function PushHub(patcher, options) {
  PushWidget.call(this, patcher)
  
  this.stack = options.stack
  
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

  this.cursor = this.patcher.getnamed("cursor")
}

PushHub.prototype = Object.create(PushWidget.prototype)

PushHub.prototype.linkFirst = function() {
  if (this.widgets.length == 0 || this.widgets[0].length == 0) { return }
  this.stack.clear()
  this.stack.pushWidget(this.widgets[0][0])
}

PushHub.prototype.buttonSelected = function(row, col) {
  var widget = this.widgets[col][row]
  var push = this.push
  
  this.stack.clear()
  this.stack.pushWidget(widget)
  
  if (!this.cursor) { return }
  
  // update the cursor
  // post(widget.patcher.box.rect)
  // var attr = post(this.patcher.getattrnames())
  var rect = widget.patcher.box.rect
  var left = rect[0]
  var top = rect[1]
  var cursorRect = this.cursor.rect
  var cursorTop = top - 20
  var cursorLeft = left - 20
  var cursorWidth = cursorRect[2] - cursorRect[0]
  var cursorHeight = cursorRect[3] - cursorRect[1]
  var cursorRect = ""+cursorLeft+". "+cursorTop+". "+(cursorLeft + cursorWidth)+". "+(cursorTop + cursorHeight)+"."
  var cursorRectArr = [cursorLeft, cursorTop, (cursorLeft + cursorWidth), (cursorTop + cursorHeight)]
  this.cursor.rect = cursorRectArr
  // this.cursor.setattr("rect", cursorRect)
  // post(cursorRect)
  // post()
  
  var scrollX = cursorLeft - 10
  var scrollY = cursorTop - 10
  this.patcher.wind.scrollto(scrollX, scrollY)
}

// widgetIndex is a 2D array of scripting names of max objects
// each object should be a bpatcher that loads a file
// and there should be a corresponding js file of the same name that defines the widget behavior
PushHub.prototype.initIndex = function(widgetIndex) {
  this.widgets = []
  this.widgetLibs = {}
  for (var col=0; col<widgetIndex.length; ++col) {
    var widgetCol = widgetIndex[col]
    this.widgets.push([])
    for (var row=0; row<widgetCol.length; ++row) {
      var scriptingName = widgetCol[row]
      var bpatcher = this.patcher.getnamed(scriptingName)
      // there should be a js file with the same name as the bpatcher file
      var libFile = bpatcher.subpatcher().name
      // require it if it hasn't been once before...
      if (!this.widgetLibs[libFile]) {
        this.widgetLibs[libFile] = require(libFile)
      }
      var widgetLib = this.widgetLibs[libFile]
      // each widget should export a Widget() constructor
      this.widgets[col].push(new widgetLib.Widget(bpatcher.subpatcher()))
    }
  }
}

PushHub.prototype.displayWidgets = function() {
  for (var col=0; col<this.widgets.length; ++col) {
    var widgetCol = this.widgets[col]
    for (var row=0; row<widgetCol.length; ++row) {
      var widget = widgetCol[row]
      this.push.displayText(row, col, widget.name())
    }
  }
}

PushHub.prototype.link = function(push) {
  // unlink in case we're getting linked twice
  if (this.push) {
    this.unlink()
  }
  
  this.push = push    
  this.displayWidgets()

  for (var col=0; col<8; ++col) {
    for (var row=0; row<4; ++row) {
      if (col < this.widgets.length && row < this.widgets[col].length) {
        var button = this.selectButtons[col][row]
        button.link(this.push)
        button.displayValue(20 + row)
      }
    }
  }
}

PushHub.prototype.unlink = function() {
        
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

this.exports.PushHub = PushHub
