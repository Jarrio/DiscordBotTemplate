package js.html;

typedef RTCDataChannelInit = {
	@:optional
	var id : Float;
	@:optional
	var maxPacketLifeTime : Float;
	@:optional
	var maxRetransmits : Float;
	@:optional
	var negotiated : Bool;
	@:optional
	var ordered : Bool;
	@:optional
	var priority : RTCPriorityType;
	@:optional
	var protocol : String;
};