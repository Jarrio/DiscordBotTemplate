package discord_js;

@:jsRequire("discord.js", "WebhookClient") extern class WebhookClient {
	function new(id:String, token:String, ?options:ClientOptions);
	public var client : WebhookClient;
	public var token : String;
	private var _timeouts : js.lib.Set<Dynamic>;
	private var _intervals : js.lib.Set<Dynamic>;
	private var _immediates : js.lib.Set<Dynamic>;
	private final api : Dynamic;
	private var rest : Dynamic;
	private function decrementMaxListeners():Void;
	private function incrementMaxListeners():Void;
	public var options : ClientOptions;
	public function clearInterval(interval:Dynamic):Void;
	public function clearTimeout(timeout:Dynamic):Void;
	public function clearImmediate(timeout:Dynamic):Void;
	public function destroy():Void;
	public function setInterval(fn:(args:haxe.extern.Rest<Dynamic>) -> Void, delay:Float, args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTimeout(fn:(args:haxe.extern.Rest<Dynamic>) -> Void, delay:Float, args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setImmediate(fn:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toJSON(props:haxe.extern.Rest<{ }>):Dynamic;
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
	static var prototype : WebhookClient;
}