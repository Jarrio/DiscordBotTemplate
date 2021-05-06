package discord_js;

@:jsRequire("discord.js", "MessageReaction") extern class MessageReaction {
	function new(client:Client, data:Dynamic, message:Message);
	private var _emoji : ts.AnyOf2<GuildEmoji, ReactionEmoji>;
	public final client : Client;
	public var count : Null<Float>;
	public final emoji : ts.AnyOf2<GuildEmoji, ReactionEmoji>;
	public var me : Bool;
	public var message : Message;
	public final partial : Bool;
	public var users : ReactionUserManager;
	public function remove():js.lib.Promise<MessageReaction>;
	public function fetch():js.lib.Promise<MessageReaction>;
	public function toJSON():Dynamic;
	static var prototype : MessageReaction;
}