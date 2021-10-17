package js.html;

typedef RTCIceCandidateDictionary = {
	@:optional
	var foundation : String;
	@:optional
	var ip : String;
	@:optional
	var msMTurnSessionId : String;
	@:optional
	var port : Float;
	@:optional
	var priority : Float;
	@:optional
	var protocol : RTCIceProtocol;
	@:optional
	var relatedAddress : String;
	@:optional
	var relatedPort : Float;
	@:optional
	var tcpType : RTCIceTcpCandidateType;
	@:optional
	var type : RTCIceCandidateType;
};