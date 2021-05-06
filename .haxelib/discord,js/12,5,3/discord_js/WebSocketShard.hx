package discord_js;

@:jsRequire("discord.js", "WebSocketShard") extern class WebSocketShard {
	function new(manager:WebSocketManager, id:Float);
	private var sequence : Float;
	private var closeSequence : Float;
	private var sessionID : Null<String>;
	private var lastPingTimestamp : Float;
	private var lastHeartbeatAcked : Bool;
	private var ratelimit : {
		var queue : Array<Dynamic>;
		var total : Float;
		var remaining : Float;
		var time : Int;
		var timer : Dynamic;
	};
	private var connection : Dynamic;
	private var helloTimeout : Dynamic;
	private var eventsAttached : Bool;
	private var expectedGuilds : Null<js.lib.Set<String>>;
	private var readyTimeout : Dynamic;
	public var manager : WebSocketManager;
	public var id : Float;
	public var status : Float;
	public var ping : Float;
	private function debug(message:String):Void;
	private function connect():js.lib.Promise<Void>;
	private function onOpen():Void;
	private function onMessage(event:MessageEvent):Void;
	private function onError(error:ts.AnyOf2<Dynamic, ErrorEvent>):Void;
	private function onClose(event:CloseEvent):Void;
	private function onPacket(packet:Dynamic):Void;
	private function checkReady():Void;
	private function setHelloTimeout(?time:Float):Void;
	private function setHeartbeatTimer(time:Float):Void;
	private function sendHeartbeat():Void;
	private function ackHeartbeat():Void;
	private function identify():Void;
	private function identifyNew():Void;
	private function identifyResume():Void;
	private function _send(data:Dynamic):Void;
	private function processQueue():Void;
	private function destroy(?destroyOptions:{ @:optional var closeCode : Float; @:optional var reset : Bool; @:optional var emit : Bool; @:optional var log : Bool; }):Void;
	private function _cleanupConnection():Void;
	private function _emitDestroyed():Void;
	public function send(data:Dynamic):Void;
	@:overload(function(event:String, listener:(event:CloseEvent) -> Void):WebSocketShard { })
	@:overload(function(event:String, listener:ts.AnyOf2<() -> Void, (unavailableGuilds:js.lib.Set<String>) -> Void>):WebSocketShard { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WebSocketShard { })
	public function on(event:String, listener:() -> Void):WebSocketShard;
	@:overload(function(event:String, listener:(event:CloseEvent) -> Void):WebSocketShard { })
	@:overload(function(event:String, listener:ts.AnyOf2<() -> Void, (unavailableGuilds:js.lib.Set<String>) -> Void>):WebSocketShard { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WebSocketShard { })
	public function once(event:String, listener:() -> Void):WebSocketShard;
	static var prototype : WebSocketShard;
}