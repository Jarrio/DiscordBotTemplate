package discord_js;

@:jsRequire("discord.js", "Permissions") extern class Permissions extends BitField<PermissionString> {
	function new();
	public function any(permission:BitFieldResolvable<PermissionString>, ?checkAdmin:Bool):Bool;
	public function has(permission:BitFieldResolvable<PermissionString>, ?checkAdmin:Bool):Bool;
	public function missing(bits:BitFieldResolvable<PermissionString>, ?checkAdmin:Bool):Array<PermissionString>;
	public function serialize(?checkAdmin:Bool):{
		var CREATE_INSTANT_INVITE : Bool;
		var KICK_MEMBERS : Bool;
		var BAN_MEMBERS : Bool;
		var ADMINISTRATOR : Bool;
		var MANAGE_CHANNELS : Bool;
		var MANAGE_GUILD : Bool;
		var ADD_REACTIONS : Bool;
		var VIEW_AUDIT_LOG : Bool;
		var PRIORITY_SPEAKER : Bool;
		var STREAM : Bool;
		var VIEW_CHANNEL : Bool;
		var SEND_MESSAGES : Bool;
		var SEND_TTS_MESSAGES : Bool;
		var MANAGE_MESSAGES : Bool;
		var EMBED_LINKS : Bool;
		var ATTACH_FILES : Bool;
		var READ_MESSAGE_HISTORY : Bool;
		var MENTION_EVERYONE : Bool;
		var USE_EXTERNAL_EMOJIS : Bool;
		var VIEW_GUILD_INSIGHTS : Bool;
		var CONNECT : Bool;
		var SPEAK : Bool;
		var MUTE_MEMBERS : Bool;
		var DEAFEN_MEMBERS : Bool;
		var MOVE_MEMBERS : Bool;
		var USE_VAD : Bool;
		var CHANGE_NICKNAME : Bool;
		var MANAGE_NICKNAMES : Bool;
		var MANAGE_ROLES : Bool;
		var MANAGE_WEBHOOKS : Bool;
		var MANAGE_EMOJIS : Bool;
	};
	public function toArray(?checkAdmin:Bool):Array<PermissionString>;
	static var prototype : Permissions;
	public static var ALL : Float;
	public static var DEFAULT : Float;
	public static var FLAGS : PermissionFlags;
	public static function resolve(?permission:BitFieldResolvable<PermissionString>):Float;
}