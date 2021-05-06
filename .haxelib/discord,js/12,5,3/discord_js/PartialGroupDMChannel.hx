package discord_js;

@:jsRequire("discord.js", "PartialGroupDMChannel") extern class PartialGroupDMChannel extends Channel {
	function new(client:Client, data:Dynamic);
	public var name : String;
	public var icon : Null<String>;
	public function iconURL(?options:ImageURLOptions):Null<String>;
	static var prototype : PartialGroupDMChannel;
}