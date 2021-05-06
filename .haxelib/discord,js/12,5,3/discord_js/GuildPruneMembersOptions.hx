package discord_js;

typedef GuildPruneMembersOptions = {
	@:optional
	var count : Bool;
	@:optional
	var days : Float;
	@:optional
	var dry : Bool;
	@:optional
	var reason : String;
	@:optional
	var roles : Array<RoleResolvable>;
};