package discord_js;

@:jsRequire("discord.js", "SystemChannelFlags") extern class SystemChannelFlags extends BitField<SystemChannelFlagsString> {
	function new();
	static var prototype : SystemChannelFlags;
	public static var FLAGS : {
		var WELCOME_MESSAGE_DISABLED : Float;
		var BOOST_MESSAGE_DISABLED : Float;
	};
	public static function resolve(?bit:BitFieldResolvable<SystemChannelFlagsString>):Float;
}