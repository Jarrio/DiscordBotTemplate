package discord_js;

@:jsRequire("discord.js", "ClientUser") extern class ClientUser extends User {
	function new();
	public var mfaEnabled : Bool;
	public var verified : Bool;
	@:overload(function(name:String, ?options:ActivityOptions):js.lib.Promise<Presence> { })
	public function setActivity(?options:ActivityOptions):js.lib.Promise<Presence>;
	public function setAFK(afk:Bool):js.lib.Promise<Presence>;
	public function setAvatar(avatar:Dynamic):js.lib.Promise<ClientUser>;
	public function setPresence(data:PresenceData):js.lib.Promise<Presence>;
	public function setStatus(status:PresenceStatusData, ?shardID:ts.AnyOf2<Float, Array<Float>>):js.lib.Promise<Presence>;
	public function setUsername(username:String):js.lib.Promise<ClientUser>;
	static var prototype : ClientUser;
}