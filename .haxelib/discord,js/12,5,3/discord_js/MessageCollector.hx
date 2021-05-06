package discord_js;

@:jsRequire("discord.js", "MessageCollector") extern class MessageCollector extends Collector<String, Message> {
	function new(channel:ts.AnyOf2<TextChannel, DMChannel>, filter:CollectorFilter, ?options:MessageCollectorOptions);
	private function _handleChannelDeletion(channel:GuildChannel):Void;
	private function _handleGuildDeletion(guild:Guild):Void;
	public var channel : Channel;
	public var received : Float;
	public function collect(message:Message):String;
	public function dispose(message:Message):String;
	public function endReason():String;
	@:overload(function(event:String, listener:(collected:Collection<String, Message>, reason:String) -> Void):MessageCollector { })
	public function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessageCollector;
	@:overload(function(event:String, listener:(collected:Collection<String, Message>, reason:String) -> Void):MessageCollector { })
	public function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessageCollector;
	static var prototype : MessageCollector;
}