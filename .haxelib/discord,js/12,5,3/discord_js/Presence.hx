package discord_js;

@:jsRequire("discord.js", "Presence") extern class Presence {
	function new(client:Client, ?data:Dynamic);
	public var activities : Array<Activity>;
	public var clientStatus : Null<ClientPresenceStatusData>;
	public var guild : Null<Guild>;
	public final member : Null<GuildMember>;
	public var status : PresenceStatus;
	public final user : Null<User>;
	public var userID : String;
	public function equals(presence:Presence):Bool;
	static var prototype : Presence;
}