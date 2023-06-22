var Push = require("push").Push
var PushAutoWindows = require("push.autowindows").PushAutoWindows
var PushPlayCtrl = require("push.playctrl").PushPlayCtrl

var push = new Push()
var w = null

var playCtrl = new PushPlayCtrl()
playCtrl.link(push)

function note(note, velo) {
  push.noteIn(note, velo)
}

function cc(cc, value) {
  push.ccIn(cc, value)
}

function watch() {
  if (!w) {
    w = new PushAutoWindows(patcher, { 
      max: this.max,
      push: push
    })
  }
  w.watchFront()
}

function stopwatch() {
  w.stopWatchFront()
}

// route slot list to preset save/load
function slotlist() {
  w.sendSlotList(arrayfromargs(arguments))
}

// route current preset slot
function current() {
  w.sendCurrent(arguments[0])
}

// send tempo info to tempo knob
function tempo() { 
  w.sendTempo(arguments[0]); 
}
