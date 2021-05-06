package discord_js;

@:jsRequire("discord.js", "Team") extern class Team extends Base {
	function new(client:Client, data:Dynamic);
	public var id : String;
	public var name : String;
	public var icon : Null<String>;
	public var ownerID : Null<String>;
	public var members : Collection<String, TeamMember>;
	public final owner : TeamMember;
	public final createdAt : js.lib.Date;
	public final createdTimestamp : Float;
	public function iconURL(?options:ImageURLOptions):String;
	public function toJSON():Dynamic;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	static var prototype : Team;
}