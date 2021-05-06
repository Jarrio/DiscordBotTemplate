package discord_js;

typedef GuildAuditLogsActions = {
	@:optional
	var ALL : Any;
	@:optional
	var GUILD_UPDATE : Float;
	@:optional
	var CHANNEL_CREATE : Float;
	@:optional
	var CHANNEL_UPDATE : Float;
	@:optional
	var CHANNEL_DELETE : Float;
	@:optional
	var CHANNEL_OVERWRITE_CREATE : Float;
	@:optional
	var CHANNEL_OVERWRITE_UPDATE : Float;
	@:optional
	var CHANNEL_OVERWRITE_DELETE : Float;
	@:optional
	var MEMBER_KICK : Float;
	@:optional
	var MEMBER_PRUNE : Float;
	@:optional
	var MEMBER_BAN_ADD : Float;
	@:optional
	var MEMBER_BAN_REMOVE : Float;
	@:optional
	var MEMBER_UPDATE : Float;
	@:optional
	var MEMBER_ROLE_UPDATE : Float;
	@:optional
	var MEMBER_MOVE : Float;
	@:optional
	var MEMBER_DISCONNECT : Float;
	@:optional
	var BOT_ADD : Float;
	@:optional
	var ROLE_CREATE : Float;
	@:optional
	var ROLE_UPDATE : Float;
	@:optional
	var ROLE_DELETE : Float;
	@:optional
	var INVITE_CREATE : Float;
	@:optional
	var INVITE_UPDATE : Float;
	@:optional
	var INVITE_DELETE : Float;
	@:optional
	var WEBHOOK_CREATE : Float;
	@:optional
	var WEBHOOK_UPDATE : Float;
	@:optional
	var WEBHOOK_DELETE : Float;
	@:optional
	var EMOJI_CREATE : Float;
	@:optional
	var EMOJI_UPDATE : Float;
	@:optional
	var EMOJI_DELETE : Float;
	@:optional
	var MESSAGE_DELETE : Float;
	@:optional
	var MESSAGE_BULK_DELETE : Float;
	@:optional
	var MESSAGE_PIN : Float;
	@:optional
	var MESSAGE_UNPIN : Float;
	@:optional
	var INTEGRATION_CREATE : Float;
	@:optional
	var INTEGRATION_UPDATE : Float;
	@:optional
	var INTEGRATION_DELETE : Float;
};