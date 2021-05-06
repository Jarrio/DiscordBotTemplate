package discord_js;

@:jsRequire("discord.js", "MessageFlags") extern class MessageFlags extends BitField<MessageFlagsString> {
	function new();
	static var prototype : MessageFlags;
	public static var FLAGS : {
		var CROSSPOSTED : Float;
		var IS_CROSSPOST : Float;
		var SUPPRESS_EMBEDS : Float;
		var SOURCE_MESSAGE_DELETED : Float;
		var URGENT : Float;
	};
	public static function resolve(?bit:BitFieldResolvable<MessageFlagsString>):Float;
}