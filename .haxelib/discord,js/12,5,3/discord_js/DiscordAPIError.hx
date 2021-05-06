package discord_js;

@:jsRequire("discord.js", "DiscordAPIError") extern class DiscordAPIError extends js.lib.Error {
	function new(path:String, error:Dynamic, method:String, httpStatus:Float);
	public var code : Float;
	public var method : String;
	public var path : String;
	public var httpStatus : Float;
	static var prototype : DiscordAPIError;
	private static function flattenErrors(obj:Dynamic, key:String):Array<String>;
}