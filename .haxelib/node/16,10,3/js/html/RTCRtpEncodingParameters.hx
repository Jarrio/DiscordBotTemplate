package js.html;

typedef RTCRtpEncodingParameters = {
	@:optional
	var active : Bool;
	@:optional
	var codecPayloadType : Float;
	@:optional
	var dtx : RTCDtxStatus;
	@:optional
	var maxBitrate : Float;
	@:optional
	var maxFramerate : Float;
	@:optional
	var priority : RTCPriorityType;
	@:optional
	var ptime : Float;
	@:optional
	var scaleResolutionDownBy : Float;
	@:optional
	var rid : String;
};