package discord_js;

@:jsRequire("discord.js", "VoiceReceiver") extern class VoiceReceiver {
	function new(connection:VoiceConnection);
	public function createStream(user:UserResolvable, ?options:{ @:optional var mode : String; @:optional var end : String; }):Dynamic;
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):VoiceReceiver { })
	public function on(event:String, listener:(error:ts.AnyOf2<String, js.lib.Error>) -> Void):VoiceReceiver;
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):VoiceReceiver { })
	public function once(event:String, listener:(error:ts.AnyOf2<String, js.lib.Error>) -> Void):VoiceReceiver;
	static var prototype : VoiceReceiver;
}