package discord_js;

@:jsRequire("discord.js", "GuildMemberManager") extern class GuildMemberManager extends BaseManager<String, GuildMember, UserResolvable> {
	function new(guild:Guild, ?iterable:Iterable<Dynamic>);
	public var guild : Guild;
	public function ban(user:UserResolvable, ?options:BanOptions):js.lib.Promise<ts.AnyOf3<String, User, GuildMember>>;
	@:overload(function(?options:FetchMembersOptions):js.lib.Promise<Collection<String, GuildMember>> { })
	public function fetch(options:ts.AnyOf6<String, User, GuildMember, Message, FetchMemberOptions, Dynamic>):js.lib.Promise<GuildMember>;
	@:overload(function(?options:GuildPruneMembersOptions):js.lib.Promise<Float> { })
	public function prune(options:Dynamic):js.lib.Promise<Dynamic>;
	public function unban(user:UserResolvable, ?reason:String):js.lib.Promise<User>;
	static var prototype : GuildMemberManager;
}