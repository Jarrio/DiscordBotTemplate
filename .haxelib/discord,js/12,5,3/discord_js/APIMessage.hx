package discord_js;

@:jsRequire("discord.js", "APIMessage") extern class APIMessage {
	function new(target:MessageTarget, options:ts.AnyOf2<MessageOptions, WebhookMessageOptions>);
	public var data : Null<Dynamic>;
	public final isUser : Bool;
	public final isWebhook : Bool;
	public var files : Null<Array<Dynamic>>;
	public var options : ts.AnyOf2<MessageOptions, WebhookMessageOptions>;
	public var target : MessageTarget;
	public function makeContent():Null<ts.AnyOf2<String, Array<String>>>;
	public function resolve():js.lib.Promise<APIMessage>;
	public function resolveData():APIMessage;
	public function resolveFiles():js.lib.Promise<APIMessage>;
	public function split():Array<APIMessage>;
	static var prototype : APIMessage;
	@:overload(function(target:MessageTarget, content:Dynamic, options:ts.AnyOf5<MessageOptions, WebhookMessageOptions, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>>, ?extra:ts.AnyOf2<MessageOptions, WebhookMessageOptions>):APIMessage { })
	public static function create(target:MessageTarget, content:APIMessageContentResolvable, ?options:Any, ?extra:ts.AnyOf2<MessageOptions, WebhookMessageOptions>):APIMessage;
	public static function partitionMessageAdditions(items:haxe.ds.ReadOnlyArray<ts.AnyOf2<MessageEmbed, MessageAttachment>>):ts.Tuple2<Array<MessageEmbed>, Array<MessageAttachment>>;
	public static function resolveFile(fileLike:Dynamic):js.lib.Promise<Dynamic>;
	@:overload(function(content:Dynamic, options:ts.AnyOf5<MessageOptions, WebhookMessageOptions, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>>, ?extra:ts.AnyOf2<MessageOptions, WebhookMessageOptions>, ?isWebhook:Bool):ts.AnyOf2<MessageOptions, WebhookMessageOptions> { })
	public static function transformOptions(content:APIMessageContentResolvable, ?options:Any, ?extra:ts.AnyOf2<MessageOptions, WebhookMessageOptions>, ?isWebhook:Bool):ts.AnyOf2<MessageOptions, WebhookMessageOptions>;
}