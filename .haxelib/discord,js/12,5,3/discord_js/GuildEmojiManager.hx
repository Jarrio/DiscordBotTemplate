package discord_js;

@:jsRequire("discord.js", "GuildEmojiManager") extern class GuildEmojiManager extends BaseManager<String, GuildEmoji, EmojiResolvable> {
	function new(guild:Guild, ?iterable:Iterable<Dynamic>);
	public var guild : Guild;
	public function create(attachment:Dynamic, name:String, ?options:GuildEmojiCreateOptions):js.lib.Promise<GuildEmoji>;
	public function resolveIdentifier(emoji:EmojiResolvable):Null<String>;
	static var prototype : GuildEmojiManager;
}