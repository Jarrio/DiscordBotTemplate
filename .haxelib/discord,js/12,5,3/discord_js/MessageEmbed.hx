package discord_js;

@:jsRequire("discord.js", "MessageEmbed") extern class MessageEmbed {
	function new(?data:ts.AnyOf2<MessageEmbed, MessageEmbedOptions>);
	public var author : Null<MessageEmbedAuthor>;
	public var color : Null<Float>;
	public final createdAt : Null<js.lib.Date>;
	public var description : Null<String>;
	public var fields : Array<EmbedField>;
	public var files : Array<ts.AnyOf3<String, FileOptions, MessageAttachment>>;
	public var footer : Null<MessageEmbedFooter>;
	public final hexColor : Null<String>;
	public var image : Null<MessageEmbedImage>;
	public final length : Float;
	public var provider : Null<MessageEmbedProvider>;
	public var thumbnail : Null<MessageEmbedThumbnail>;
	public var timestamp : Null<Float>;
	public var title : Null<String>;
	public var type : String;
	public var url : Null<String>;
	public final video : Null<MessageEmbedVideo>;
	public function addField(name:Dynamic, value:Dynamic, ?inline_:Bool):MessageEmbed;
	public function addFields(fields:haxe.extern.Rest<Any>):MessageEmbed;
	public function attachFiles(file:Array<ts.AnyOf3<String, FileOptions, MessageAttachment>>):MessageEmbed;
	public function setAuthor(name:Dynamic, ?iconURL:String, ?url:String):MessageEmbed;
	public function setColor(color:ColorResolvable):MessageEmbed;
	public function setDescription(description:Dynamic):MessageEmbed;
	public function setFooter(text:Dynamic, ?iconURL:String):MessageEmbed;
	public function setImage(url:String):MessageEmbed;
	public function setThumbnail(url:String):MessageEmbed;
	public function setTimestamp(?timestamp:ts.AnyOf2<Float, js.lib.Date>):MessageEmbed;
	public function setTitle(title:Dynamic):MessageEmbed;
	public function setURL(url:String):MessageEmbed;
	public function spliceFields(index:Float, deleteCount:Float, fields:haxe.extern.Rest<Any>):MessageEmbed;
	public function toJSON():Dynamic;
	static var prototype : MessageEmbed;
	public static function normalizeField(name:Dynamic, value:Dynamic, ?inline_:Bool):{
		var name : Dynamic;
		var value : Dynamic;
		@:native("inline")
		var inline_ : Bool;
	};
	public static function normalizeFields(fields:haxe.extern.Rest<Any>):Array<{
		var name : Dynamic;
		var value : Dynamic;
		@:native("inline")
		var inline_ : Bool;
	}>;
}