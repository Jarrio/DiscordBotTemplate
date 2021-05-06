package discord_js;

@:jsRequire("discord.js", "GuildMemberRoleManager") extern class GuildMemberRoleManager extends OverridableManager<String, Role, RoleResolvable> {
	function new(member:GuildMember);
	public final hoist : Null<Role>;
	public final color : Null<Role>;
	public final highest : Role;
	public var member : GuildMember;
	public var guild : Guild;
	public function add(roleOrRoles:ts.AnyOf4<String, Role, Collection<String, Role>, haxe.ds.ReadOnlyArray<RoleResolvable>>, ?reason:String):js.lib.Promise<GuildMember>;
	public function set(roles:ts.AnyOf2<Collection<String, Role>, haxe.ds.ReadOnlyArray<RoleResolvable>>, ?reason:String):js.lib.Promise<GuildMember>;
	public function remove(roleOrRoles:ts.AnyOf4<String, Role, Collection<String, Role>, haxe.ds.ReadOnlyArray<RoleResolvable>>, ?reason:String):js.lib.Promise<GuildMember>;
	static var prototype : GuildMemberRoleManager;
}