package discord_js;

typedef GuildAuditLogsFetchOptions = {
	@:optional
	var before : ts.AnyOf2<String, GuildAuditLogsEntry>;
	@:optional
	var limit : Float;
	@:optional
	var user : UserResolvable;
	@:optional
	var type : ts.AnyOf2<Float, String>;
};