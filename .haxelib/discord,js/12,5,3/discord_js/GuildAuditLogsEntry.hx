package discord_js;

@:jsRequire("discord.js", "GuildAuditLogsEntry") extern class GuildAuditLogsEntry {
	function new(logs:GuildAuditLogs, guild:Guild, data:Dynamic);
	public var action : String;
	public var actionType : GuildAuditLogsActionType;
	public var changes : Null<Array<AuditLogChange>>;
	public final createdAt : js.lib.Date;
	public final createdTimestamp : Float;
	public var executor : User;
	public var extra : Null<ts.AnyOf3<Dynamic, GuildMember, Role>>;
	public var id : String;
	public var reason : Null<String>;
	public var target : Null<ts.AnyOf10<User, Webhook, Message, GuildChannel, Guild, Role, Invite, GuildEmoji, Integration, {
		var id : String;
	}>>;
	public var targetType : String;
	public function toJSON():Dynamic;
	static var prototype : GuildAuditLogsEntry;
}