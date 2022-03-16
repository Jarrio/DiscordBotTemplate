package discord_js;

import ts.AnyOf2;
import discord_js.ThreadManager.BaseFetchOptions;
import haxe.extern.EitherType;

@:jsRequire("discord.js", "MessageManager") extern class MessageManager extends BaseManager<String, Message, MessageResolvable> {
	function new(channel:ts.AnyOf2<TextChannel, DMChannel>, ?iterable:Iterable<Dynamic>);
	public var channel : TextBasedChannelFields;
	@:overload(function(?message:EitherType<String, ChannelLogsQuery>, ?options:BaseFetchOptions):js.lib.Promise<Collection<String, Message>> { })
	public function fetch(?message:EitherType<String, ChannelLogsQuery>, ?options:BaseFetchOptions):js.lib.Promise<AnyOf2<Message, Collection<Snowflake, Message>>>;
	public function fetchPinned(?cache:Bool):js.lib.Promise<Collection<String, Message>>;
	public function delete(message:MessageResolvable, ?reason:String):js.lib.Promise<Void>;
	static var prototype : MessageManager;
}

typedef ChannelLogsQuery = {
	@:optional var limit:Int;
	@:optional var before:String;
	@:optional var after:String;
	@:optional var around:String;
}
