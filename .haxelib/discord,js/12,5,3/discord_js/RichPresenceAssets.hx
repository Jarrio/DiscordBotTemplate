package discord_js;

@:jsRequire("discord.js", "RichPresenceAssets") extern class RichPresenceAssets {
	function new(activity:Activity, assets:Dynamic);
	public var largeImage : Null<String>;
	public var largeText : Null<String>;
	public var smallImage : Null<String>;
	public var smallText : Null<String>;
	public function largeImageURL(?options:ImageURLOptions):Null<String>;
	public function smallImageURL(?options:ImageURLOptions):Null<String>;
	static var prototype : RichPresenceAssets;
}