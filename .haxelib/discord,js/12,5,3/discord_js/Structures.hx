package discord_js;

@:jsRequire("discord.js", "Structures") extern class Structures {
	function new();
	static var prototype : Structures;
	@:overload(function(structure:String):(args:haxe.extern.Rest<Dynamic>) -> Void { })
	public static function get<K>(structure:K):Dynamic;
	@:overload(function<T>(structure:String, extender:(baseClass:js.lib.FunctionConstructor) -> T):T { })
	public static function extend<K, T>(structure:K, extender:(baseClass:Dynamic) -> T):T;
}