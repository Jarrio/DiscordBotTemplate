package discord_js;

@:jsRequire("discord.js", "ReactionUserManager") extern class ReactionUserManager extends BaseManager<String, User, UserResolvable> {
	function new(client:Client, iterable:Null<Iterable<Dynamic>>, reaction:MessageReaction);
	public var reaction : MessageReaction;
	public function fetch(?options:{ @:optional var limit : Float; @:optional var after : String; @:optional var before : String; }):js.lib.Promise<Collection<String, User>>;
	public function remove(?user:UserResolvable):js.lib.Promise<MessageReaction>;
	static var prototype : ReactionUserManager;
}