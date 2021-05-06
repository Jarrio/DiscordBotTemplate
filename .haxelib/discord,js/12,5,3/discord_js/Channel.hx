package discord_js;

@:jsRequire("discord.js", "Channel") extern class Channel extends Base {
	function new(client:Client, ?data:Dynamic);
	public final createdAt : js.lib.Date;
	public final createdTimestamp : Float;
	public var deleted : Bool;
	public var id : String;
	public var type : String;
	public function delete(?reason:String):js.lib.Promise<Channel>;
	public function fetch(?force:Bool):js.lib.Promise<Channel>;
	public function isText():Bool;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	static var prototype : Channel;
}