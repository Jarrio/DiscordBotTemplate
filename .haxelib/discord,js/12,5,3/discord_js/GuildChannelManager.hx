package discord_js;

@:jsRequire("discord.js", "GuildChannelManager") extern class GuildChannelManager extends BaseManager<String, GuildChannel, GuildChannelResolvable> {
	function new(guild:Guild, ?iterable:Iterable<Dynamic>);
	public var guild : Guild;
	@:overload(function(name:String, options:Dynamic):js.lib.Promise<CategoryChannel> { })
	@:overload(function(name:String, ?options:Dynamic):js.lib.Promise<TextChannel> { })
	@:overload(function(name:String, options:GuildCreateChannelOptions):js.lib.Promise<ts.AnyOf3<TextChannel, CategoryChannel, VoiceChannel>> { })
	public function create(name:String, options:Dynamic):js.lib.Promise<VoiceChannel>;
	static var prototype : GuildChannelManager;
}