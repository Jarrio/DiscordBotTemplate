package discord_js;

typedef PermissionOverwriteOption = {
	@:optional
	var CREATE_INSTANT_INVITE : Bool;
	@:optional
	var KICK_MEMBERS : Bool;
	@:optional
	var BAN_MEMBERS : Bool;
	@:optional
	var ADMINISTRATOR : Bool;
	@:optional
	var MANAGE_CHANNELS : Bool;
	@:optional
	var MANAGE_GUILD : Bool;
	@:optional
	var ADD_REACTIONS : Bool;
	@:optional
	var VIEW_AUDIT_LOG : Bool;
	@:optional
	var PRIORITY_SPEAKER : Bool;
	@:optional
	var STREAM : Bool;
	@:optional
	var VIEW_CHANNEL : Bool;
	@:optional
	var SEND_MESSAGES : Bool;
	@:optional
	var SEND_TTS_MESSAGES : Bool;
	@:optional
	var MANAGE_MESSAGES : Bool;
	@:optional
	var EMBED_LINKS : Bool;
	@:optional
	var ATTACH_FILES : Bool;
	@:optional
	var READ_MESSAGE_HISTORY : Bool;
	@:optional
	var MENTION_EVERYONE : Bool;
	@:optional
	var USE_EXTERNAL_EMOJIS : Bool;
	@:optional
	var VIEW_GUILD_INSIGHTS : Bool;
	@:optional
	var CONNECT : Bool;
	@:optional
	var SPEAK : Bool;
	@:optional
	var MUTE_MEMBERS : Bool;
	@:optional
	var DEAFEN_MEMBERS : Bool;
	@:optional
	var MOVE_MEMBERS : Bool;
	@:optional
	var USE_VAD : Bool;
	@:optional
	var CHANGE_NICKNAME : Bool;
	@:optional
	var MANAGE_NICKNAMES : Bool;
	@:optional
	var MANAGE_ROLES : Bool;
	@:optional
	var MANAGE_WEBHOOKS : Bool;
	@:optional
	var MANAGE_EMOJIS : Bool;
};