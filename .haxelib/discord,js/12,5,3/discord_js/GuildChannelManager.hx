package discord_js;

import discord_js.ThreadManager.BaseFetchOptions;
import js.lib.Promise;

@:jsRequire("discord.js", "GuildChannelManager") extern class GuildChannelManager extends BaseManager<String, GuildChannel, GuildChannelResolvable> {
	function new(guild:Guild, ?iterable:Iterable<Dynamic>);
	public var guild : Guild;
	@:overload(function(name:String, options:Dynamic):Promise<CategoryChannel> { })
	@:overload(function(name:String, ?options:Dynamic):Promise<TextChannel> { })
	@:overload(function(name:String, options:GuildCreateChannelOptions):Promise<ts.AnyOf3<TextChannel, CategoryChannel, VoiceChannel>> { })
	public function create(name:String, options:Dynamic):Promise<VoiceChannel>;
	public function fetch(?id:String, ?options:BaseFetchOptions):Promise<ts.AnyOf2<GuildChannel, Collection<Snowflake, GuildChannel>>>;
	
	static var prototype : GuildChannelManager;
}