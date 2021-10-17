package discordjs.rest;

/**
	Represents an API error returned by Discord
**/
@:jsRequire("@discordjs/rest", "DiscordAPIError") extern class DiscordAPIError extends js.lib.Error {
	function new(rawError:DiscordErrorData, code:Float, status:Float, method:String, url:String);
	var rawError : DiscordErrorData;
	var code : Float;
	var status : Float;
	var method : String;
	var url : String;
	static var prototype : DiscordAPIError;
	private static var getMessage : Dynamic;
	private static var flattenDiscordError : Dynamic;
}