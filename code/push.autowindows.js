var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushHubMaster = require("push.hub.master").PushHubMaster

function PushAutoWindows(patcher, options) {
  PushWidget.call(this, patcher)

  this.max = options.max
  this.push = options.push
  this.activePatcherName = null
  this.hubMaster = null
}

PushAutoWindows.prototype = Object.create(PushWidget.prototype)

PushAutoWindows.prototype.sendSlotList = function(slots) {
  if (!this.hubMaster) { return }
  this.hubMaster.slotList(slots)
}

PushAutoWindows.prototype.sendCurrent = function(current) {
  if (!this.hubMaster) { return }
  this.hubMaster.current(current)
}

PushAutoWindows.prototype.sendTempo = function(tempo) {
  if (!this.hubMaster) { return }
  this.hubMaster.tempo(tempo)
}

PushAutoWindows.prototype.checkFront = function() {
  var front = this.max.frontpatcher
  
  if (!front) { return }
  if (this.activePatcherName == front.name) { return }

  // unlink the previous hubMaster if needed
  if (this.hubMaster) {
    this.hubMaster.unlink()
  }

  this.activePatcherName = front.name
  
  // find all bpatchers/subpatchers in that patcher
  var nextObj = front.firstobject
  var widgetIndex = [[]]
  var subpatcherIndex = [[]]
  var col = 0
  var subcol = 0
  var pattrstorage = null
  var playpads = null
  while (nextObj) {
    if (nextObj.maxclass == "patcher") {
      
      // it's either a subpatcher or a bpatcher
      var subpatcherName = nextObj.subpatcher().name
      var Widget = require(subpatcherName).Widget
      if (Widget) {
        var varname = nextObj.varname
        // if it has a scripting name, add it to the widget index for the hub
        if (varname) {
          if (widgetIndex[col].length > 3) {
            col += 1
            widgetIndex.push([])
          }
          widgetIndex[col].push(nextObj.varname)
        }
        else if (subpatcherName == "push.playpads") {
          // if there's a playpads, add it to the hubmaster
          playpads = new Widget(nextObj.subpatcher())
        }
      }
      else if (nextObj.varname) {        
        // not a widget, so it's a subpatcher we might want to open
        if (subpatcherIndex[subcol].length > 3) {
          subcol += 1;
          subpatcherIndex.push([]);
        }
        subpatcherIndex[subcol].push(nextObj.varname);
      }
    }
    else if (nextObj.maxclass == "pattrstorage") {
      pattrstorage = nextObj
    }

    nextObj = nextObj.nextobject
  }
  
  // create a hubmaster
  this.hubMaster = new PushHubMaster(front, {
    widgetIndex: widgetIndex,
    subpatcherIndex: subpatcherIndex,
    pattrstorage: pattrstorage,
    playpads: playpads
  })

  // link it
  this.hubMaster.link(this.push)
}

PushAutoWindows.prototype.watchFront = function() {
  this.frontTask = new Task(this.checkFront, this)
  this.frontTask.interval = 500
  this.frontTask.repeat()
}

PushAutoWindows.prototype.stopWatchFront = function() {
  this.frontTask.cancel()
  this.frontTask.freepeer()
}

this.exports.PushAutoWindows = PushAutoWindows