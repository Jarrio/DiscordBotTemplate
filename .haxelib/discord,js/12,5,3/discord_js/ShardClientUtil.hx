package discord_js;

@:jsRequire("discord.js", "ShardClientUtil") extern class ShardClientUtil {
	function new(client:Client, mode:ShardingManagerMode);
	private function _handleMessage(message:Dynamic):Void;
	private function _respond(type:String, message:Dynamic):Void;
	public var client : Client;
	public final count : Float;
	public final ids : Array<Float>;
	public var mode : ShardingManagerMode;
	public var parentPort : Dynamic;
	@:overload(function(script:String, shard:Float):js.lib.Promise<Dynamic> { })
	@:overload(function<T>(fn:(client:Client) -> T):js.lib.Promise<Array<T>> { })
	@:overload(function<T>(fn:(client:Client) -> T, shard:Float):js.lib.Promise<T> { })
	public function broadcastEval(script:String):js.lib.Promise<Array<Dynamic>>;
	@:overload(function(prop:String, shard:Float):js.lib.Promise<Dynamic> { })
	public function fetchClientValues(prop:String):js.lib.Promise<Array<Dynamic>>;
	public function respawnAll(?shardDelay:Float, ?respawnDelay:Float, ?spawnTimeout:Float):js.lib.Promise<Void>;
	public function send(message:Dynamic):js.lib.Promise<Void>;
	static var prototype : ShardClientUtil;
	public static function singleton(client:Client, mode:ShardingManagerMode):ShardClientUtil;
	public static function shardIDForGuildID(guildID:String, shardCount:Float):Float;
}