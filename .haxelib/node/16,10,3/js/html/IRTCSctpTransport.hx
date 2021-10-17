package js.html;

typedef IRTCSctpTransport = {
	final maxChannels : Null<Float>;
	final maxMessageSize : Float;
	@:optional
	dynamic function onstatechange(ev:js.html.Event):Dynamic;
	final state : RTCSctpTransportState;
	final transport : RTCDtlsTransport;
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
};