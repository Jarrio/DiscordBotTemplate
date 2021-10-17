package discordjs.rest;

/**
	Represents a HTTP error
**/
@:jsRequire("@discordjs/rest", "HTTPError") extern class HTTPError extends js.lib.Error {
	function new(message:String, name:String, status:Float, method:String, url:String);
	var status : Float;
	var method : String;
	var url : String;
	static var prototype : HTTPError;
}