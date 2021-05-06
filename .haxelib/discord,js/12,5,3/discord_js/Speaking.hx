package discord_js;

@:jsRequire("discord.js", "Speaking") extern class Speaking extends BitField<SpeakingString> {
	function new();
	static var prototype : Speaking;
	public static var FLAGS : {
		var SPEAKING : Float;
		var SOUNDSHARE : Float;
		var PRIORITY_SPEAKING : Float;
	};
	public static function resolve(?bit:BitFieldResolvable<SpeakingString>):Float;
}