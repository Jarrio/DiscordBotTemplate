package node.http2;

typedef ClientSessionOptions = {
	@:optional
	var maxReservedRemoteStreams : Float;
	@:optional
	dynamic function createConnection(authority:node.url.URL, option:SessionOptions):node.stream.Duplex;
	@:optional
	var protocol : String;
	@:optional
	var maxDeflateDynamicTableSize : Float;
	@:optional
	var maxSessionMemory : Float;
	@:optional
	var maxHeaderListPairs : Float;
	@:optional
	var maxOutstandingPings : Float;
	@:optional
	var maxSendHeaderBlockLength : Float;
	@:optional
	var paddingStrategy : Float;
	@:optional
	var peerMaxConcurrentStreams : Float;
	@:optional
	var settings : Settings;
	/**
		Specifies a timeout in milliseconds that
		a server should wait when an [`'unknownProtocol'`][] is emitted. If the
		socket has not been destroyed by that time the server will destroy it.
	**/
	@:optional
	var unknownProtocolTimeout : Float;
	@:optional
	function selectPadding(frameLen:Float, maxFrameLen:Float):Float;
};