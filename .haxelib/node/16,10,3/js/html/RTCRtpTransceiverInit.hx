package js.html;

typedef RTCRtpTransceiverInit = {
	@:optional
	var direction : RTCRtpTransceiverDirection;
	@:optional
	var sendEncodings : Array<RTCRtpEncodingParameters>;
	@:optional
	var streams : Array<js.html.MediaStream>;
};