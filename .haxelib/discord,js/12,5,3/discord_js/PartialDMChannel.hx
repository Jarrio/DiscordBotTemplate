package discord_js;

typedef PartialDMChannel = {
	var lastMessage : Dynamic;
	var lastMessageID : Null<Any>;
	var messages : MessageManager;
	var recipient : ts.AnyOf2<User, PartialUser>;
	var type : String;
	final typing : Bool;
	final typingCount : Float;
	final client : Client;
	final createdAt : js.lib.Date;
	final createdTimestamp : Float;
	var deleted : Bool;
	var id : String;
	var partial : Bool;
	function fetch():js.lib.Promise<DMChannel>;
	var _typing : Null<js.lib.Map<String, TypingData>>;
	var lastPinTimestamp : Null<Float>;
	var lastPinAt : Null<js.lib.Date>;
	dynamic function awaitMessages(filter:CollectorFilter, ?options:AwaitMessagesOptions):js.lib.Promise<Collection<String, Message>>;
	dynamic function createMessageCollector(filter:CollectorFilter, ?options:MessageCollectorOptions):MessageCollector;
	dynamic function startTyping(?count:Float):js.lib.Promise<Void>;
	dynamic function stopTyping(?force:Bool):Void;
	@:overload(function(options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(options:ts.AnyOf2<APIMessage, MessageOptions>):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	@:overload(function(content:Dynamic, options:ts.AnyOf4<MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, Dynamic>):js.lib.Promise<Message> { })
	@:overload(function(content:Dynamic, options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(content:Dynamic, options:MessageOptions):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	dynamic function send(content:ts.AnyOf10<String, Float, { }, Bool, js.lib.Symbol, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, haxe.ds.ReadOnlyArray<Dynamic>, Dynamic>):js.lib.Promise<Message>;
	dynamic function toJSON(props:haxe.extern.Rest<{ }>):Dynamic;
	/**
		Returns the primitive value of the specified object.
	**/
	@:overload(function():String { })
	dynamic function valueOf():Dynamic;
	dynamic function delete(?reason:String):js.lib.Promise<Channel>;
	dynamic function isText():Bool;
	/**
		Returns a string representation of an object.
	**/
	dynamic function toString():String;
};