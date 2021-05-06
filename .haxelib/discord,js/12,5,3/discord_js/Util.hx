package discord_js;

@:jsRequire("discord.js", "Util") extern class Util {
	function new();
	static var prototype : Util;
	public static function basename(path:String, ?ext:String):String;
	public static function binaryToID(num:String):String;
	public static function cleanContent(str:String, message:Message):String;
	public static function removeMentions(str:String):String;
	public static function cloneObject(obj:Dynamic):Dynamic;
	public static function convertToBuffer(ab:ts.AnyOf2<String, js.lib.ArrayBuffer>):Dynamic;
	public static function delayFor(ms:Float):js.lib.Promise<Void>;
	public static function discordSort<K, V>(collection:Collection<K, V>):Collection<K, V>;
	public static function escapeMarkdown(text:String, ?options:EscapeMarkdownOptions):String;
	public static function escapeCodeBlock(text:String):String;
	public static function escapeInlineCode(text:String):String;
	public static function escapeBold(text:String):String;
	public static function escapeItalic(text:String):String;
	public static function escapeUnderline(text:String):String;
	public static function escapeStrikethrough(text:String):String;
	public static function escapeSpoiler(text:String):String;
	public static function cleanCodeBlockContent(text:String):String;
	public static function fetchRecommendedShards(token:String, ?guildsPerShard:Float):js.lib.Promise<Float>;
	public static function flatten(obj:Dynamic, props:haxe.extern.Rest<{ }>):Dynamic;
	public static function idToBinary(num:String):String;
	public static function makeError(obj:{ var name : String; var message : String; var stack : String; }):js.lib.Error;
	public static function makePlainError(err:js.lib.Error):{
		var name : String;
		var message : String;
		var stack : String;
	};
	public static function mergeDefault(def:Dynamic, given:Dynamic):Dynamic;
	public static function moveElementInArray(array:Array<Dynamic>, element:Dynamic, newIndex:Float, ?offset:Bool):Float;
	public static function parseEmoji(text:String):Null<{
		var animated : Bool;
		var name : String;
		var id : Null<String>;
	}>;
	public static function resolveColor(color:ColorResolvable):Float;
	public static function resolveString(data:Dynamic):String;
	public static function setPosition<T>(item:T, position:Float, relative:Bool, sorted:Collection<String, T>, route:Dynamic, ?reason:String):js.lib.Promise<Array<{
		var id : String;
		var position : Float;
	}>>;
	public static function splitMessage(text:Dynamic, ?options:SplitOptions):Array<String>;
	public static function str2ab(str:String):js.lib.ArrayBuffer;
}