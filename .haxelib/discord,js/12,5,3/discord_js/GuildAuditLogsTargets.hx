package discord_js;

typedef GuildAuditLogsTargets = {
	@:optional
	var ALL : String;
	@:optional
	var GUILD : String;
	@:optional
	var CHANNEL : String;
	@:optional
	var USER : String;
	@:optional
	var ROLE : String;
	@:optional
	var INVITE : String;
	@:optional
	var WEBHOOK : String;
	@:optional
	var EMOJI : String;
	@:optional
	var MESSAGE : String;
	@:optional
	var INTEGRATION : String;
	@:optional
	var UNKNOWN : String;
};