package discord_js;

@:jsRequire("discord.js", "UserFlags") extern class UserFlags extends BitField<UserFlagsString> {
	function new();
	static var prototype : UserFlags;
	public static var FLAGS : {
		var DISCORD_EMPLOYEE : Float;
		var PARTNERED_SERVER_OWNER : Float;
		var DISCORD_PARTNER : Float;
		var HYPESQUAD_EVENTS : Float;
		var BUGHUNTER_LEVEL_1 : Float;
		var HOUSE_BRAVERY : Float;
		var HOUSE_BRILLIANCE : Float;
		var HOUSE_BALANCE : Float;
		var EARLY_SUPPORTER : Float;
		var TEAM_USER : Float;
		var SYSTEM : Float;
		var BUGHUNTER_LEVEL_2 : Float;
		var VERIFIED_BOT : Float;
		var EARLY_VERIFIED_DEVELOPER : Float;
		var VERIFIED_DEVELOPER : Float;
	};
	public static function resolve(?bit:BitFieldResolvable<UserFlagsString>):Float;
}