package discord_js;

@:jsRequire("discord.js", "SnowflakeUtil") extern class SnowflakeUtil {
	function new();
	static var prototype : SnowflakeUtil;
	public static function deconstruct(snowflake:String):DeconstructedSnowflake;
	public static function generate(?timestamp:ts.AnyOf2<Float, js.lib.Date>):String;
	public static final EPOCH : Float;
}