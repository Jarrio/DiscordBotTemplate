package discord_js;

@:jsRequire("discord.js", "GuildManager") extern class GuildManager extends BaseManager<String, Guild, GuildResolvable> {
	function new(client:Client, ?iterable:Iterable<Dynamic>);
	public function create(name:String, ?options:GuildCreateOptions):js.lib.Promise<Guild>;
	public function fetch(id:String, ?cache:Bool, ?force:Bool):js.lib.Promise<Guild>;
	static var prototype : GuildManager;
}