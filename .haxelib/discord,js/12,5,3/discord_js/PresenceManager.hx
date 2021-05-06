package discord_js;

@:jsRequire("discord.js", "PresenceManager") extern class PresenceManager extends BaseManager<String, Presence, PresenceResolvable> {
	function new(client:Client, ?iterable:Iterable<Dynamic>);
	static var prototype : PresenceManager;
}