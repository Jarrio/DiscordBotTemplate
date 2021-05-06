package discord_js;

@:jsRequire("discord.js", "VoiceBroadcast") extern class VoiceBroadcast {
	function new(client:Client);
	public var client : Client;
	public var subscribers : Array<StreamDispatcher>;
	public final dispatcher : Null<BroadcastDispatcher>;
	public function play(input:Dynamic, ?options:StreamOptions):BroadcastDispatcher;
	public function end():Void;
	@:overload(function(event:String, listener:(dispatcher:StreamDispatcher) -> Void):VoiceBroadcast { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):VoiceBroadcast { })
	public function on(event:String, listener:() -> Void):VoiceBroadcast;
	@:overload(function(event:String, listener:(dispatcher:StreamDispatcher) -> Void):VoiceBroadcast { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):VoiceBroadcast { })
	public function once(event:String, listener:() -> Void):VoiceBroadcast;
	static var prototype : VoiceBroadcast;
}