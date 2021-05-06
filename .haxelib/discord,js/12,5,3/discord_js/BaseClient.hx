package discord_js;

@:jsRequire("discord.js", "BaseClient") extern class BaseClient {
	function new(?options:ClientOptions);
	private var _timeouts : js.lib.Set<Dynamic>;
	private var _intervals : js.lib.Set<Dynamic>;
	private var _immediates : js.lib.Set<Dynamic>;
	private final api : Dynamic;
	private var rest : Dynamic;
	private function decrementMaxListeners():Void;
	private function incrementMaxListeners():Void;
	public var options : ClientOptions;
	public function clearInterval(interval:Dynamic):Void;
	public function clearTimeout(timeout:Dynamic):Void;
	public function clearImmediate(timeout:Dynamic):Void;
	public function destroy():Void;
	public function setInterval(fn:(args:haxe.extern.Rest<Dynamic>) -> Void, delay:Float, args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTimeout(fn:(args:haxe.extern.Rest<Dynamic>) -> Void, delay:Float, args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setImmediate(fn:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toJSON(props:haxe.extern.Rest<{ }>):Dynamic;
	static var prototype : BaseClient;
}