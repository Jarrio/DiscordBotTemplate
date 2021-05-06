package discord_js;

@:jsRequire("discord.js", "Shard") extern class Shard {
	function new(manager:ShardingManager, id:Float);
	private var _evals : js.lib.Map<String, js.lib.Promise<Dynamic>>;
	private dynamic function _exitListener(args:haxe.extern.Rest<Dynamic>):Void;
	private var _fetches : js.lib.Map<String, js.lib.Promise<Dynamic>>;
	private function _handleExit(?respawn:Bool):Void;
	private function _handleMessage(message:Dynamic):Void;
	public var args : Array<String>;
	public var execArgv : Array<String>;
	public var env : Dynamic;
	public var id : Float;
	public var manager : ShardingManager;
	public var process : Dynamic;
	public var ready : Bool;
	public var worker : Dynamic;
	@:overload(function<T>(fn:(client:Client) -> T):js.lib.Promise<Array<T>> { })
	public function eval(script:String):js.lib.Promise<Dynamic>;
	public function fetchClientValue(prop:String):js.lib.Promise<Dynamic>;
	public function kill():Void;
	public function respawn(?delay:Float, ?spawnTimeout:Float):js.lib.Promise<Dynamic>;
	public function send(message:Dynamic):js.lib.Promise<Shard>;
	public function spawn(?spawnTimeout:Float):js.lib.Promise<Dynamic>;
	@:overload(function(event:String, listener:() -> Void):Shard { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Shard { })
	@:overload(function(event:String, listener:(message:Dynamic) -> Void):Shard { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Shard { })
	public function on(event:String, listener:(child:Dynamic) -> Void):Shard;
	@:overload(function(event:String, listener:() -> Void):Shard { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Shard { })
	@:overload(function(event:String, listener:(message:Dynamic) -> Void):Shard { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Shard { })
	public function once(event:String, listener:(child:Dynamic) -> Void):Shard;
	static var prototype : Shard;
}