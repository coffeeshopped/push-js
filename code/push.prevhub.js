// This is just the PushHub but with the global (application) code still in it.
// Removed that to make this more flexible

var Push = require("push").Push
var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushPad = widgetlib.PushPad
var PushGlobalCtrl = require("push.globalctrl").PushGlobalCtrl

function PushHub(patcher, options) {
  PushWidget.call(this, patcher)
  this.linkedWidget = null
  
  _this = this
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

PushHub.prototype.buttonSelected = function(row, col) {
  var widget = this.widgets[col][row]
  var push = this.push
  this.unlink()
  
  this.linkedWidget = widget
  widget.link(push)
  
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
  
  // this.widgets[0][0].link(this.push)
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

// push arg is just for consistency here. But this.push is set in initPush()
PushHub.prototype.link = function(push) {
  
  // unlink in case we're getting linked twice
  if (this.push) {
    this.unlink()
  }
  
  // if a widget is linked, unlink it first
  if (this.linkedWidget) {
    this.linkedWidget.unlink()
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
  this.push.initText();
    
  for (var col=0; col<8; ++col) {
    for (var row=0; row<4; ++row) {
      this.selectButtons[col][row].unlink();
    }
  }
    
  this.push = null;
}


var widgetIndex = require(this.patcher.name + ".widgets").widgetIndex
var push = new Push()
var hub = new PushHub(patcher, {})
var globalCtrl = new PushGlobalCtrl(patcher, { hub: hub })

var task = new Task(function() {
  hub.initIndex(widgetIndex)
  globalCtrl.link(push)
  arguments.callee.task.freepeer()
})
task.schedule(1000)



function note(pitch, velo) {
  push.noteIn(pitch, velo)
}

function cc(ctrl, value) {
  push.ccIn(ctrl, value)
}
