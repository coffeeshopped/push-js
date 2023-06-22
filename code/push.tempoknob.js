var PushC = require("push.const").PushC
var widgetlib = require("push.widget")
var PushWidgetStack = widgetlib.PushWidgetStack


function PushTempoKnob(widgetStack) {
  this.widgetStack = widgetStack
  this.tempoDisplay = new PushTempoKnobDisplay()
}

PushTempoKnob.prototype.tempo = function(tempo) {
  this.tempoDisplay.setTempo(tempo)
}

PushTempoKnob.prototype.link = function(push) {
  this.push = push
  var _this = this;

  // add a listener for the knob value
  this.push.addControlListener(PushC.Ctrl.clickKnob, function(value) {
    var inc = value < 64 ? value : value - 128
    messnamed("pushtempoinc", inc)
  })
  
  // on click knob touch
  this.push.addNoteListener(10, function(value) {
    if (value == 0) {
      _this.widgetStack.pop(_this.tempoDisplay);
    }
    else {
      messnamed("pushtempoinc", 0) // get the current tempo
      _this.widgetStack.pushWidget(_this.tempoDisplay);
    }
  })
}

PushTempoKnob.prototype.unlink = function() {
  if (this.push) {
    this.push.removeNoteListener(10)
    this.push.removeControlListener(PushC.Ctrl.clickKnob)
    this.widgetStack.pop(this.tempoDisplay);
  }

  this.push = null
}


function PushTempoKnobDisplay() {
  this.tempo = 0
}

PushTempoKnobDisplay.prototype.setTempo = function(tempo) {
  this.tempo = tempo;
  this.display();
}

PushTempoKnobDisplay.prototype.display = function() {
  if (!this.push) { return }
  this.push.displayText(0, 0, "Tempo")    
  this.push.displayText(1, 0, this.tempo == 0 ? "???" : this.tempo + "")    
}

PushTempoKnobDisplay.prototype.link = function(push) {
  this.push = push
  this.display();
}

PushTempoKnobDisplay.prototype.unlink = function() {
  if (this.push) {
    this.push.displayText(0, 0, "")
    this.push.displayText(1, 0, "")
  }

  this.push = null
}

exports.PushTempoKnob = PushTempoKnob

