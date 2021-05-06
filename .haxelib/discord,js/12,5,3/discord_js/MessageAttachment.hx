package discord_js;

@:jsRequire("discord.js", "MessageAttachment") extern class MessageAttachment {
	function new(attachment:Dynamic, ?name:String, ?data:Dynamic);
	public var attachment : Dynamic;
	public var height : Null<Float>;
	public var id : String;
	public var name : Null<String>;
	public var proxyURL : String;
	public var size : Float;
	public final spoiler : Bool;
	public var url : String;
	public var width : Null<Float>;
	public function setFile(attachment:Dynamic, ?name:String):MessageAttachment;
	public function setName(name:String):MessageAttachment;
	public function toJSON():Dynamic;
	static var prototype : MessageAttachment;
}