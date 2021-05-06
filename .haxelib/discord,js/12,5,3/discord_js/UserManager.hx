package discord_js;

@:jsRequire("discord.js", "UserManager") extern class UserManager extends BaseManager<String, User, UserResolvable> {
	function new(client:Client, ?iterable:Iterable<Dynamic>);
	public function fetch(id:String, ?cache:Bool, ?force:Bool):js.lib.Promise<User>;
	static var prototype : UserManager;
}