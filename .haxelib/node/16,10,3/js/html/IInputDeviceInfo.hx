package js.html;

typedef IInputDeviceInfo = {
	function getCapabilities():MediaTrackCapabilities;
	final deviceId : String;
	final groupId : String;
	final kind : js.html.MediaDeviceKind;
	final label : String;
	function toJSON():Dynamic;
};