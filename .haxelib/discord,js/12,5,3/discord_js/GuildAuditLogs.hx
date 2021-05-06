package discord_js;

@:jsRequire("discord.js", "GuildAuditLogs") extern class GuildAuditLogs {
	function new(guild:Guild, data:Dynamic);
	private var webhooks : Collection<String, Webhook>;
	private var integrations : Collection<String, Integration>;
	public var entries : Collection<String, GuildAuditLogsEntry>;
	public function toJSON():Dynamic;
	static var prototype : GuildAuditLogs;
	public static var Actions : GuildAuditLogsActions;
	public static var Targets : GuildAuditLogsTargets;
	public static var Entry : {
		var prototype : GuildAuditLogsEntry;
	};
	public static function actionType(action:Float):GuildAuditLogsActionType;
	public static function build(args:haxe.extern.Rest<Dynamic>):js.lib.Promise<GuildAuditLogs>;
	public static function targetType(target:Float):String;
}