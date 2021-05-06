package discord_js;

@:jsRequire("discord.js", "HTTPError") extern class HTTPError extends js.lib.Error {
	function new(message:String, name:String, code:Float, method:String, path:String);
	public var code : Float;
	public var method : String;
	public var path : String;
	static var prototype : HTTPError;
}