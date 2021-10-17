package js.html;

typedef RTCConfiguration = {
	@:optional
	var bundlePolicy : RTCBundlePolicy;
	@:optional
	var certificates : Array<js.html.rtc.Certificate>;
	@:optional
	var iceCandidatePoolSize : Float;
	@:optional
	var iceServers : Array<RTCIceServer>;
	@:optional
	var iceTransportPolicy : RTCIceTransportPolicy;
	@:optional
	var peerIdentity : String;
	@:optional
	var rtcpMuxPolicy : RTCRtcpMuxPolicy;
};