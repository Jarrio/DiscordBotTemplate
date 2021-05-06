package discord_js;

typedef PartialTextBasedChannelFields = {
	var lastMessageID : Null<String>;
	final lastMessage : Null<Message>;
	@:overload(function(options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(options:ts.AnyOf2<APIMessage, MessageOptions>):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	@:overload(function(content:Dynamic, options:ts.AnyOf4<MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, Dynamic>):js.lib.Promise<Message> { })
	@:overload(function(content:Dynamic, options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(content:Dynamic, options:MessageOptions):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	function send(content:ts.AnyOf10<String, Float, { }, Bool, js.lib.Symbol, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, haxe.ds.ReadOnlyArray<Dynamic>, Dynamic>):js.lib.Promise<Message>;
};