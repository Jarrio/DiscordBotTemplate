package js.html;

typedef VRDisplayEventInit = {
	var display : VRDisplay;
	@:optional
	var reason : VRDisplayEventReason;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};