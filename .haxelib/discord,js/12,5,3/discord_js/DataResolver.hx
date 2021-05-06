package discord_js;

@:jsRequire("discord.js", "DataResolver") extern class DataResolver {
	function new();
	static var prototype : DataResolver;
	public static function resolveBase64(data:Dynamic):String;
	public static function resolveCode(data:String, regx:js.lib.RegExp):String;
	public static function resolveFile(resource:Dynamic):js.lib.Promise<Dynamic>;
	public static function resolveFileAsBuffer(resource:Dynamic):js.lib.Promise<Dynamic>;
	public static function resolveImage(resource:Dynamic):js.lib.Promise<String>;
	public static function resolveInviteCode(data:String):String;
	public static function resolveGuildTemplateCode(data:String):String;
}