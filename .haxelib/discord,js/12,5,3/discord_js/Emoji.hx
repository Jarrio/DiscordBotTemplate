package discord_js;

@:jsRequire("discord.js", "Emoji") extern class Emoji extends Base {
	function new(client:Client, emoji:Dynamic);
	public var animated : Bool;
	public final createdAt : Null<js.lib.Date>;
	public final createdTimestamp : Null<Float>;
	public var deleted : Bool;
	public var id : Null<String>;
	public var name : String;
	public final identifier : String;
	public final url : Null<String>;
	public function toJSON():Dynamic;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	static var prototype : Emoji;
}