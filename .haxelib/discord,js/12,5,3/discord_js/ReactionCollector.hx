package discord_js;

@:jsRequire("discord.js", "ReactionCollector") extern class ReactionCollector extends Collector<String, MessageReaction> {
	function new(?options:ReactionCollectorOptions);
	private function _handleChannelDeletion(channel:GuildChannel):Void;
	private function _handleGuildDeletion(guild:Guild):Void;
	private function _handleMessageDeletion(message:Message):Void;
	public var message : Message;
	public var total : Float;
	public var users : Collection<String, User>;
	public function collect(reaction:MessageReaction):String;
	public function dispose(reaction:MessageReaction, user:User):String;
	public function empty():Void;
	public function endReason():Null<String>;
	@:overload(function(event:String, listener:(collected:Collection<String, MessageReaction>, reason:String) -> Void):ReactionCollector { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReactionCollector { })
	public function on(event:String, listener:(reaction:MessageReaction, user:User) -> Void):ReactionCollector;
	@:overload(function(event:String, listener:(collected:Collection<String, MessageReaction>, reason:String) -> Void):ReactionCollector { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReactionCollector { })
	public function once(event:String, listener:(reaction:MessageReaction, user:User) -> Void):ReactionCollector;
	static var prototype : ReactionCollector;
	public static function key(reaction:MessageReaction):String;
}