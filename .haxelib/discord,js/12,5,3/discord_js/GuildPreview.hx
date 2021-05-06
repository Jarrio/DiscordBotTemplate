package discord_js;

@:jsRequire("discord.js", "GuildPreview") extern class GuildPreview extends Base {
	function new(client:Client, data:Dynamic);
	public var approximateMemberCount : Float;
	public var approximatePresenceCount : Float;
	public var description : Null<String>;
	public var discoverySplash : Null<String>;
	public var emojis : Collection<String, GuildPreviewEmoji>;
	public var features : Array<GuildFeatures>;
	public var icon : Null<String>;
	public var id : String;
	public var name : String;
	public var splash : Null<String>;
	public function discoverySplashURL(?options:ImageURLOptions):Null<String>;
	public function iconURL(?options:ImageURLOptions & { @:optional @:native("dynamic") var dynamic_ : Bool; }):Null<String>;
	public function splashURL(?options:ImageURLOptions):Null<String>;
	public function fetch():js.lib.Promise<GuildPreview>;
	public function toJSON():Dynamic;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	static var prototype : GuildPreview;
}