package discord_js;

@:jsRequire("discord.js", "ChannelManager") extern class ChannelManager extends BaseManager<String, Channel, ChannelResolvable> {
	function new(client:Client, iterable:Iterable<Dynamic>);
	public function fetch(id:String, ?cache:Bool, ?force:Bool):js.lib.Promise<Channel>;
	static var prototype : ChannelManager;
}