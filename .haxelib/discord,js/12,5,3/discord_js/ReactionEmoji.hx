package discord_js;

@:jsRequire("discord.js", "ReactionEmoji") extern class ReactionEmoji extends Emoji {
	function new(reaction:MessageReaction, emoji:Dynamic);
	public var reaction : MessageReaction;
	static var prototype : ReactionEmoji;
}