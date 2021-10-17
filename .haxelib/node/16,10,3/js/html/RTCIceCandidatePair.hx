package js.html;

typedef RTCIceCandidatePair = {
	@:optional
	var local : js.html.rtc.IceCandidate;
	@:optional
	var remote : js.html.rtc.IceCandidate;
};