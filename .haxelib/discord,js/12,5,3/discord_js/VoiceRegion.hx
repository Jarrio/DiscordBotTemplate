package discord_js;

@:jsRequire("discord.js", "VoiceRegion") extern class VoiceRegion {
	function new(data:Dynamic);
	public var custom : Bool;
	public var deprecated : Bool;
	public var id : String;
	public var name : String;
	public var optimal : Bool;
	public var vip : Bool;
	public function toJSON():Dynamic;
	static var prototype : VoiceRegion;
}