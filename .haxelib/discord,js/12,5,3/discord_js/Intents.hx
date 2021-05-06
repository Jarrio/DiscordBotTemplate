package discord_js;

@:jsRequire("discord.js", "Intents") extern class Intents extends BitField<IntentsString> {
	function new();
	static var prototype : Intents;
	public static var FLAGS : {
		var GUILDS : Float;
		var GUILD_MEMBERS : Float;
		var GUILD_BANS : Float;
		var GUILD_EMOJIS : Float;
		var GUILD_INTEGRATIONS : Float;
		var GUILD_WEBHOOKS : Float;
		var GUILD_INVITES : Float;
		var GUILD_VOICE_STATES : Float;
		var GUILD_PRESENCES : Float;
		var GUILD_MESSAGES : Float;
		var GUILD_MESSAGE_REACTIONS : Float;
		var GUILD_MESSAGE_TYPING : Float;
		var DIRECT_MESSAGES : Float;
		var DIRECT_MESSAGE_REACTIONS : Float;
		var DIRECT_MESSAGE_TYPING : Float;
	};
	public static var PRIVILEGED : Float;
	public static var ALL : Float;
	public static var NON_PRIVILEGED : Float;
	public static function resolve(?bit:BitFieldResolvable<IntentsString>):Float;
}