package discord_js;

@:jsRequire("discord.js", "DMChannel") extern class DMChannel {
	function new(client:Client, ?data:Dynamic);
	public var messages : MessageManager;
	public var recipient : User;
	public final partial : Bool;
	public var type : String;
	public function fetch(?force:Bool):js.lib.Promise<DMChannel>;
	public final createdAt : js.lib.Date;
	public final createdTimestamp : Float;
	public var deleted : Bool;
	public var id : String;
	public function delete(?reason:String):js.lib.Promise<Channel>;
	public function isText():Bool;
	/**
		Returns a string representation of an object.
	**/
	dynamic function toString():String;
	public final client : Client;
	public function toJSON(props:haxe.extern.Rest<{ }>):Dynamic;
	/**
		Returns the primitive value of the specified object.
	**/
	@:overload(function():Dynamic { })
	dynamic function valueOf():String;
	var _typing : js.lib.Map<String, TypingData>;
	var lastPinTimestamp : Null<Float>;
	var lastPinAt : Null<js.lib.Date>;
	var typing : Bool;
	var typingCount : Float;
	dynamic function awaitMessages(filter:CollectorFilter, ?options:AwaitMessagesOptions):js.lib.Promise<Collection<String, Message>>;
	dynamic function createMessageCollector(filter:CollectorFilter, ?options:MessageCollectorOptions):MessageCollector;
	dynamic function startTyping(?count:Float):js.lib.Promise<Void>;
	dynamic function stopTyping(?force:Bool):Void;
	var lastMessageID : Null<String>;
	var lastMessage : Null<Message>;
	@:overload(function(options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(options:ts.AnyOf2<APIMessage, MessageOptions>):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	@:overload(function(content:Dynamic, options:ts.AnyOf4<MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, Dynamic>):js.lib.Promise<Message> { })
	@:overload(function(content:Dynamic, options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(content:Dynamic, options:MessageOptions):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	dynamic function send(content:ts.AnyOf10<String, Float, { }, Bool, js.lib.Symbol, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, haxe.ds.ReadOnlyArray<Dynamic>, Dynamic>):js.lib.Promise<Message>;
	static var prototype : DMChannel;
}