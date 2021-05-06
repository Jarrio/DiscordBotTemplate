package discord_js;

typedef WebhookFields = {
	var id : String;
	final createdAt : js.lib.Date;
	final createdTimestamp : Float;
	final url : String;
	function delete(?reason:String):js.lib.Promise<Void>;
	function edit(options:WebhookEditData):js.lib.Promise<Webhook>;
	@:overload(function(options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(options:ts.AnyOf2<APIMessage, WebhookMessageOptions>):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	@:overload(function(content:Dynamic, options:ts.AnyOf4<MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, Dynamic>):js.lib.Promise<Message> { })
	@:overload(function(content:Dynamic, options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(content:Dynamic, options:WebhookMessageOptions):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	function send(content:ts.AnyOf10<String, Float, { }, Bool, js.lib.Symbol, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, haxe.ds.ReadOnlyArray<Dynamic>, Dynamic>):js.lib.Promise<Message>;
	function sendSlackMessage(body:Dynamic):js.lib.Promise<Bool>;
};