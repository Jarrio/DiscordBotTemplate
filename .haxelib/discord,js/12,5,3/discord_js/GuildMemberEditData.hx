package discord_js;

typedef GuildMemberEditData = {
	@:optional
	var nick : String;
	@:optional
	var roles : ts.AnyOf2<Collection<String, Role>, haxe.ds.ReadOnlyArray<RoleResolvable>>;
	@:optional
	var mute : Bool;
	@:optional
	var deaf : Bool;
	@:optional
	var channel : ChannelResolvable;
};