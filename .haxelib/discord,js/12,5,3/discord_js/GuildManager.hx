package discord_js;

import discord_js.ThreadManager.BaseFetchOptions;

@:jsRequire("discord.js", "GuildManager") extern class GuildManager extends BaseManager<String, Guild, GuildResolvable> {
	function new(client:Client, ?iterable:Iterable<Dynamic>);
	public function create(name:String, ?options:GuildCreateOptions):js.lib.Promise<Guild>;
	public function fetch(id:FetchGuildOptions):js.lib.Promise<GuildMember>;
	static var prototype : GuildManager;
}

typedef FetchGuildOptions = {
	> BaseFetchOptions,
	@:optional var guild:String;
	@:optional var withCounts:Bool;
}