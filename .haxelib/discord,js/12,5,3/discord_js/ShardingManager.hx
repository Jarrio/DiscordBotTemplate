package discord_js;

@:jsRequire("discord.js", "ShardingManager") extern class ShardingManager {
	function new(file:String, ?options:{ @:optional var totalShards : ts.AnyOf2<Float, String>; @:optional var shardList : ts.AnyOf2<Array<Float>, String>; @:optional var mode : ShardingManagerMode; @:optional var respawn : Bool; @:optional var shardArgs : Array<String>; @:optional var token : String; @:optional var execArgv : Array<String>; });
	@:overload(function(method:String, args:Array<Dynamic>, shard:Float):js.lib.Promise<Dynamic> { })
	private function _performOnShards(method:String, args:Array<Dynamic>):js.lib.Promise<Array<Dynamic>>;
	public var file : String;
	public var respawn : Bool;
	public var shardArgs : Array<String>;
	public var shards : Collection<Float, Shard>;
	public var token : Null<String>;
	public var totalShards : ts.AnyOf2<Float, String>;
	public function broadcast(message:Dynamic):js.lib.Promise<Array<Shard>>;
	@:overload(function(script:String, shard:Float):js.lib.Promise<Dynamic> { })
	public function broadcastEval(script:String):js.lib.Promise<Array<Dynamic>>;
	public function createShard(id:Float):Shard;
	@:overload(function(prop:String, shard:Float):js.lib.Promise<Dynamic> { })
	public function fetchClientValues(prop:String):js.lib.Promise<Array<Dynamic>>;
	public function respawnAll(?shardDelay:Float, ?respawnDelay:Float, ?spawnTimeout:Float):js.lib.Promise<Collection<Float, Shard>>;
	public function spawn(?amount:ts.AnyOf2<Float, String>, ?delay:Float, ?spawnTimeout:Float):js.lib.Promise<Collection<Float, Shard>>;
	public function on(event:String, listener:(shard:Shard) -> Void):ShardingManager;
	public function once(event:String, listener:(shard:Shard) -> Void):ShardingManager;
	static var prototype : ShardingManager;
}