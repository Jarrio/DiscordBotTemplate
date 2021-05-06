package discord_js;

@:jsRequire("discord.js", "Webhook") extern class Webhook {
	function new(client:Client, ?data:Dynamic);
	public var avatar : String;
	public function avatarURL(?options:ImageURLOptions):Null<String>;
	public var channelID : String;
	public var client : Client;
	public var guildID : String;
	public var name : String;
	public var owner : Null<ts.AnyOf2<Dynamic, User>>;
	public var token : Null<String>;
	public var type : WebhookTypes;
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
	static var prototype : Webhook;
}