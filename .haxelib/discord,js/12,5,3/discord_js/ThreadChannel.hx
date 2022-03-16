package discord_js;

@:jsRequire("discord.js", "ThreadChannel") extern class ThreadChannel extends Channel {
	function new(guild:Guild, ?data:Dynamic);
	public var archived : Bool;
	public var archivedAt : Date;
	public var archiveTimestamp : Float;
	public var autoArchiveDuration : Float;
	public var editable : Bool;
	public var guild : Guild;
	public var guildId : Snowflake;
	public var guildMembers :Collection<Snowflake, GuildMember>;
	public var invitable:Bool;
	public var joinable:Bool;
	public var joined:Bool;
	public var lastMessage:Message;
	public var lastMessageId:Snowflake;
	public var lastPinAt:Date;
	public var lastPinTimestamp:Float;
	public var locked:Bool;
	public var manageable:Bool;
	public var memberCount:Int;
	//public var members:ThreadMemeb;
	public var messageCount:Int;
	public var messages:MessageManager;
	public var name:String;
	public var ownedId:String;
	
	function awaitMessages(filter:CollectorFilter, ?options:AwaitMessagesOptions):js.lib.Promise<Collection<String, Message>>;
	function bulkDelete(messages:ts.AnyOf3<Float, Collection<String, Message>, haxe.ds.ReadOnlyArray<MessageResolvable>>, ?filterOld:Bool):js.lib.Promise<Collection<String, Message>>;
	function createMessageCollector(filter:CollectorFilter, ?options:MessageCollectorOptions):MessageCollector;

	public function delete(?reason:String):js.lib.Promise<Channel>;
	public function fetch(?force:Bool):js.lib.Promise<Channel>;
	/**
		Returns a string representation of an object.
	**/
	dynamic function toString():String;
}