package discord_js;

@:jsRequire("discord.js", "ReactionManager") extern class ReactionManager extends BaseManager<String, MessageReaction, MessageReactionResolvable> {
	function new(message:Message, ?iterable:Iterable<Dynamic>);
	public var message : Message;
	public function removeAll():js.lib.Promise<Message>;
	static var prototype : ReactionManager;
}