## Mic Monitor iOS module for Titanium ##

* SCListener : https://github.com/jkells/sc_listener
* SCListener (+freqency) : https://github.com/jkells/sc_listener

### Test code

`
// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
win.add(label);
win.open();

// Module Test Code
var FrequencyModule = require('codejong.freq');
FrequencyModule.exampleProp = "This is a test value";
FrequencyModule.startMicrophoneMonitor();

setInterval(function(){
	label.text = String.format(
		'Power : %f , %f (average)\nFrequency : %f',
		FrequencyModule.peakMicrophonePower,
		FrequencyModule.averageMicrophonePower,
		FrequencyModule.microphoneFrequency
		);
},1000);
`