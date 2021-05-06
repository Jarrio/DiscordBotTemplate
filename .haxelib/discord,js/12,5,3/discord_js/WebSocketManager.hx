package discord_js;

@:jsRequire("discord.js", "WebSocketManager") extern class WebSocketManager {
	function new(client:Client);
	private var totalShards : ts.AnyOf2<String, Float>;
	private var shardQueue : js.lib.Set<WebSocketShard>;
	private var packetQueue : Array<Dynamic>;
	private var destroyed : Bool;
	private var reconnecting : Bool;
	private var sessionStartLimit : Null<{
		var total : Float;
		var remaining : Float;
		var reset_after : Float;
	}>;
	public final client : Client;
	public var gateway : Null<String>;
	public var shards : Collection<Float, WebSocketShard>;
	public var status : Float;
	public final ping : Float;
	public function on(event:WSEventType, listener:(data:Dynamic, shardID:Float) -> Void):WebSocketManager;
	public function once(event:WSEventType, listener:(data:Dynamic, shardID:Float) -> Void):WebSocketManager;
	private function debug(message:String, ?shard:WebSocketShard):Void;
	private function connect():js.lib.Promise<Void>;
	private function createShards():js.lib.Promise<Void>;
	private function reconnect():js.lib.Promise<Void>;
	private function broadcast(packet:Dynamic):Void;
	private function destroy():Void;
	private function _handleSessionLimit(?remaining:Float, ?resetAfter:Float):js.lib.Promise<Void>;
	private function handlePacket(?packet:Dynamic, ?shard:WebSocketShard):Bool;
	private function checkShardsReady():js.lib.Promise<Void>;
	private function triggerClientReady():Void;
	static var prototype : WebSocketManager;
}