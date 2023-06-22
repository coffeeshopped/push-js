// options:
// - hub: the linked hub
// on link(), it arms the "Master" button to link the associated hub

var PushC = require("push.const").PushC
var widgetlib = require("push.widget")
var PushWidget = widgetlib.PushWidget
var PushWidgetStack = widgetlib.PushWidgetStack
var PushHub = require("push.hub").PushHub
var PushSubHub = require("push.subhub").PushSubHub
var PushPresetLoader = require("push.preset.loader").PushPresetLoader
var PushPresetSaver = require("push.preset.saver").PushPresetSaver
var PushTempoKnob = require("push.tempoknob").PushTempoKnob

function PushHubMaster(patcher, options) {
  PushWidget.call(this, patcher);
  
  this.stack = new PushWidgetStack()
  
  this.tempoKnob = new PushTempoKnob(this.stack)
  
  this.hub = new PushHub(patcher, {
    stack: this.stack
  })
  this.hub.initIndex(options.widgetIndex)
  this.subhub = new PushSubHub(patcher, {
    index: options.subpatcherIndex
  })

  if (options.pattrstorage) {
    this.presetLoader = new PushPresetLoader(patcher, {
      pattrstorage: options.pattrstorage
    });
    this.presetSaver = new PushPresetSaver(patcher, {
      pattrstorage: options.pattrstorage
    })
  }
  
  if (options.playpads) {
    this.playpads = options.playpads
  }
}

PushHubMaster.prototype = Object.create(PushWidget.prototype)

PushHubMaster.prototype.slotList = function(slots) {
  // send to the preset loader
  if (this.presetLoader) {
    this.presetLoader.slotList(slots)
  }
  if (this.presetSaver) {
    this.presetSaver.slotList(slots)
  }
}

PushHubMaster.prototype.current = function(current) {
  if (this.presetLoader) { this.presetLoader.current(current) }
  if (this.presetSaver) { this.presetSaver.current(current) }
}

PushHubMaster.prototype.tempo = function(tempo) {
  this.tempoKnob.tempo(tempo)
}

PushHubMaster.prototype.link = function(push) {
  this.push = push
  var _this = this
  
  this.stack.link(push)
  
  this.tempoKnob.link(push)
  
  // set up the Master button (links the hub)
  this.push.displayButton(PushC.Ctrl.master, PushC.BState.on);
  this.push.addControlListener(PushC.Ctrl.master, function(value) {
    if (value == 0) {
      _this.stack.pop(_this.hub)
    }
    else {
      _this.stack.pushWidget(_this.hub)
    }
  });
  
  this.hub.linkFirst(); // auto-link the first widget
  
  // set up the in-arrow button (links the subhub)
  this.push.displayButton(PushC.Ctrl.inArrow, PushC.BState.on);
  this.push.addControlListener(PushC.Ctrl.inArrow, function(value) {
    if (value == 0) {
      _this.stack.pop(_this.subhub)
    }
    else {
      _this.stack.pushWidget(_this.subhub)
    }
  });
    
  // set up the out-arrow button (send current window to back)
  this.push.displayButton(PushC.Ctrl.outArrow, PushC.BState.on);
  this.push.addControlListener(PushC.Ctrl.outArrow, function(value) {
    if (value == 0) { return; }
    _this.unlink();
    if (_this.patcher.wind.next) {
      _this.patcher.wind.next.bringtofront();
    }
  });
  
  if (this.presetLoader) {
    this.push.displayButton(PushC.Ctrl.newButton, PushC.BState.on);
    this.push.addControlListener(PushC.Ctrl.newButton, function(value) {
      if (value == 0) {
        _this.stack.pop()
        if (_this.playpads) { _this.playpads.link(_this.push) }
      }
      else {
        if (_this.playpads) { _this.playpads.unlink() }
        _this.stack.pushWidget(_this.presetLoader)
      }
    });      
  }

  if (this.presetSaver) {
    this.push.displayButton(PushC.Ctrl.record, PushC.BState.on);
    this.push.addControlListener(PushC.Ctrl.record, function(value) {
      if (value == 0) {
        _this.stack.pop()
        if (_this.playpads) { _this.playpads.link(_this.push) }
      }
      else {
        if (_this.playpads) { _this.playpads.unlink() }
        _this.stack.pushWidget(_this.presetSaver)
      }
    });      
  }
  
  if (this.playpads) {
    this.playpads.link(push)
  }

}

PushHubMaster.prototype.unlink = function() {  
  
  if (this.playpads) {
    this.playpads.unlink()
  }

  this.tempoKnob.unlink()

  this.stack.unlink()
  
  if (!this.push) { return }
  
  this.unlinkButton(PushC.Ctrl.master)

  this.unlinkButton(PushC.Ctrl.inArrow)
  
  this.unlinkButton(PushC.Ctrl.outArrow)
  
  if (this.presetLoader) {
    this.unlinkButton(PushC.Ctrl.newButton)
  }
  
  if (this.presetSaver) {
    this.unlinkButton(PushC.Ctrl.record)
  }
  
  this.push = null
}

PushHubMaster.prototype.unlinkButton = function(button) {  
  this.push.displayButton(button, PushC.BState.off);
  this.push.removeControlListener(button);
}

exports.PushHubMaster = PushHubMaster