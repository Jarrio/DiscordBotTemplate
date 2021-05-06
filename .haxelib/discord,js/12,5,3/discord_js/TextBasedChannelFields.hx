package discord_js;

typedef TextBasedChannelFields = {
	var _typing : js.lib.Map<String, TypingData>;
	var lastPinTimestamp : Null<Float>;
	final lastPinAt : Null<js.lib.Date>;
	var typing : Bool;
	var typingCount : Float;
	function awaitMessages(filter:CollectorFilter, ?options:AwaitMessagesOptions):js.lib.Promise<Collection<String, Message>>;
	function bulkDelete(messages:ts.AnyOf3<Float, Collection<String, Message>, haxe.ds.ReadOnlyArray<MessageResolvable>>, ?filterOld:Bool):js.lib.Promise<Collection<String, Message>>;
	function createMessageCollector(filter:CollectorFilter, ?options:MessageCollectorOptions):MessageCollector;
	function startTyping(?count:Float):js.lib.Promise<Void>;
	function stopTyping(?force:Bool):Void;
	var lastMessageID : Null<String>;
	final lastMessage : Null<Message>;
	@:overload(function(options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(options:ts.AnyOf2<APIMessage, MessageOptions>):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	@:overload(function(content:Dynamic, options:ts.AnyOf4<MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, Dynamic>):js.lib.Promise<Message> { })
	@:overload(function(content:Dynamic, options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(content:Dynamic, options:MessageOptions):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	function send(content:ts.AnyOf10<String, Float, { }, Bool, js.lib.Symbol, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, haxe.ds.ReadOnlyArray<Dynamic>, Dynamic>):js.lib.Promise<Message>;
};