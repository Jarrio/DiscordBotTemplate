package js.html;

typedef RTCIceGatherOptions = {
	@:optional
	var gatherPolicy : RTCIceGatherPolicy;
	@:optional
	var iceservers : Array<RTCIceServer>;
};