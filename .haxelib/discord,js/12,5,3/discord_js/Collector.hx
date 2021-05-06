package discord_js;

@:jsRequire("discord.js", "Collector") extern class Collector<K, V> {
	function new(client:Client, filter:CollectorFilter, ?options:CollectorOptions);
	private var _timeout : Dynamic;
	private var _idletimeout : Dynamic;
	public final client : Client;
	public var collected : Collection<K, V>;
	public var ended : Bool;
	public dynamic function filter(args:haxe.extern.Rest<Dynamic>):ts.AnyOf2<Bool, js.lib.Promise<Bool>>;
	public final next : js.lib.Promise<V>;
	public var options : CollectorOptions;
	public function checkEnd():Void;
	public function handleCollect(args:haxe.extern.Rest<Dynamic>):Void;
	public function handleDispose(args:haxe.extern.Rest<Dynamic>):Void;
	public function stop(?reason:String):Void;
	public function resetTimer(?options:{ @:optional var time : Float; @:optional var idle : Float; }):Void;
	public function toJSON():Dynamic;
	private dynamic function listener(args:haxe.extern.Rest<Dynamic>):Void;
	public function collect(args:haxe.extern.Rest<Dynamic>):K;
	public function dispose(args:haxe.extern.Rest<Dynamic>):K;
	public function endReason():Void;
	@:overload(function(event:String, listener:(collected:Collection<K, V>, reason:String) -> Void):Collector<K, V> { })
	public function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Collector<K, V>;
	@:overload(function(event:String, listener:(collected:Collection<K, V>, reason:String) -> Void):Collector<K, V> { })
	public function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Collector<K, V>;
	static var prototype : Collector<Dynamic, Dynamic>;
}