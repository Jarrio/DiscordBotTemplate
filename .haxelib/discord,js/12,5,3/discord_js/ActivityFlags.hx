package discord_js;

@:jsRequire("discord.js", "ActivityFlags") extern class ActivityFlags extends BitField<ActivityFlagsString> {
	function new();
	static var prototype : ActivityFlags;
	public static var FLAGS : {
		var INSTANCE : Float;
		var JOIN : Float;
		var SPECTATE : Float;
		var JOIN_REQUEST : Float;
		var SYNC : Float;
		var PLAY : Float;
	};
	public static function resolve(?bit:BitFieldResolvable<ActivityFlagsString>):Float;
}