package discord_js;

@:jsRequire("discord.js", "RoleManager") extern class RoleManager extends BaseManager<String, Role, RoleResolvable> {
	function new(guild:Guild, ?iterable:Iterable<Dynamic>);
	public final everyone : Role;
	public final highest : Role;
	public var guild : Guild;
	public function create(?options:{ @:optional var data : RoleData; @:optional var reason : String; }):js.lib.Promise<Role>;
	@:overload(function(?id:String, ?cache:Bool, ?force:Bool):js.lib.Promise<RoleManager> { })
	public function fetch(id:String, ?cache:Bool, ?force:Bool):js.lib.Promise<Null<Role>>;
	static var prototype : RoleManager;
}