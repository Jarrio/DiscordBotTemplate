package discord_js;

import discord_js.ThreadManager.BaseFetchOptions;

@:jsRequire("discord.js", "ChannelManager") extern class ChannelManager extends BaseManager<String, Channel, ChannelResolvable> {
	function new(client:Client, iterable:Iterable<Dynamic>);
	public function fetch(id:String, ?options:BaseFetchOptions):js.lib.Promise<TextChannel>;
	static var prototype : ChannelManager;
}