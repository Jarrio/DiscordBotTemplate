package discord_js;

@:jsRequire("discord.js", "VoiceStateManager") extern class VoiceStateManager extends BaseManager<String, VoiceState, { var prototype : VoiceState; }> {
	function new(guild:Guild, ?iterable:Iterable<Dynamic>);
	public var guild : Guild;
	static var prototype : VoiceStateManager;
}