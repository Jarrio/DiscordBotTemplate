package discord_js;

@:jsRequire("discord.js", "MessageManager") extern class MessageManager extends BaseManager<String, Message, MessageResolvable> {
	function new(channel:ts.AnyOf2<TextChannel, DMChannel>, ?iterable:Iterable<Dynamic>);
	public var channel : TextBasedChannelFields;
	@:overload(function(?options:ChannelLogsQueryOptions, ?cache:Bool, ?force:Bool):js.lib.Promise<Collection<String, Message>> { })
	public function fetch(message:String, ?cache:Bool, ?force:Bool):js.lib.Promise<Message>;
	public function fetchPinned(?cache:Bool):js.lib.Promise<Collection<String, Message>>;
	public function delete(message:MessageResolvable, ?reason:String):js.lib.Promise<Void>;
	static var prototype : MessageManager;
}