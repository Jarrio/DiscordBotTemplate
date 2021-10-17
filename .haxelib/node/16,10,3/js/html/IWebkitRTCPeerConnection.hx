package js.html;

typedef IWebkitRTCPeerConnection = {
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	final canTrickleIceCandidates : Null<Bool>;
	final connectionState : RTCPeerConnectionState;
	final currentLocalDescription : Null<js.html.rtc.SessionDescription>;
	final currentRemoteDescription : Null<js.html.rtc.SessionDescription>;
	final iceConnectionState : RTCIceTransportState;
	final iceGatheringState : RTCIceGathererState;
	final idpErrorInfo : Null<String>;
	final idpLoginUrl : Null<String>;
	final localDescription : Null<js.html.rtc.SessionDescription>;
	@:optional
	dynamic function onconnectionstatechange(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function ondatachannel(ev:js.html.rtc.DataChannelEvent):Dynamic;
	@:optional
	dynamic function onicecandidate(ev:js.html.rtc.PeerConnectionIceEvent):Dynamic;
	@:optional
	dynamic function onicecandidateerror(ev:RTCPeerConnectionIceErrorEvent):Dynamic;
	@:optional
	dynamic function oniceconnectionstatechange(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onicegatheringstatechange(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onnegotiationneeded(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onsignalingstatechange(ev:js.html.Event):Dynamic;
	@:optional
	dynamic function onstatsended(ev:RTCStatsEvent):Dynamic;
	@:optional
	dynamic function ontrack(ev:js.html.rtc.TrackEvent):Dynamic;
	final peerIdentity : js.lib.Promise<RTCIdentityAssertion>;
	final pendingLocalDescription : Null<js.html.rtc.SessionDescription>;
	final pendingRemoteDescription : Null<js.html.rtc.SessionDescription>;
	final remoteDescription : Null<js.html.rtc.SessionDescription>;
	final sctp : Null<RTCSctpTransport>;
	final signalingState : RTCSignalingState;
	function addIceCandidate(candidate:ts.AnyOf2<js.html.rtc.IceCandidate, RTCIceCandidateInit>):js.lib.Promise<ts.Undefined>;
	function addTrack(track:js.html.MediaStreamTrack, streams:haxe.extern.Rest<js.html.MediaStream>):js.html.rtc.RtpSender;
	function addTransceiver(trackOrKind:ts.AnyOf2<String, js.html.MediaStreamTrack>, ?init:RTCRtpTransceiverInit):js.html.rtc.RtpTransceiver;
	function close():Void;
	function createAnswer(?options:RTCOfferOptions):js.lib.Promise<RTCSessionDescriptionInit>;
	function createDataChannel(label:String, ?dataChannelDict:RTCDataChannelInit):js.html.rtc.DataChannel;
	function createOffer(?options:RTCOfferOptions):js.lib.Promise<RTCSessionDescriptionInit>;
	function getConfiguration():RTCConfiguration;
	function getIdentityAssertion():js.lib.Promise<String>;
	function getReceivers():Array<js.html.rtc.RtpReceiver>;
	function getSenders():Array<js.html.rtc.RtpSender>;
	function getStats(?selector:js.html.MediaStreamTrack):js.lib.Promise<js.html.rtc.StatsReport>;
	function getTransceivers():Array<js.html.rtc.RtpTransceiver>;
	function removeTrack(sender:js.html.rtc.RtpSender):Void;
	function setConfiguration(configuration:RTCConfiguration):Void;
	function setIdentityProvider(provider:String, ?options:RTCIdentityProviderOptions):Void;
	function setLocalDescription(description:RTCSessionDescriptionInit):js.lib.Promise<ts.Undefined>;
	function setRemoteDescription(description:RTCSessionDescriptionInit):js.lib.Promise<ts.Undefined>;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:js.html.Event):Bool;
};