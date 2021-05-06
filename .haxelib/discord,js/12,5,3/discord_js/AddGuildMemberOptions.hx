package discord_js;

typedef AddGuildMemberOptions = {
	var accessToken : String;
	@:optional
	var nick : String;
	@:optional
	var roles : ts.AnyOf2<Collection<String, Role>, Array<RoleResolvable>>;
	@:optional
	var mute : Bool;
	@:optional
	var deaf : Bool;
};