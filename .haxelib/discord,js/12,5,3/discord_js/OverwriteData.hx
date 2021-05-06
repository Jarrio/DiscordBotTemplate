package discord_js;

typedef OverwriteData = {
	@:optional
	var allow : BitFieldResolvable<PermissionString>;
	@:optional
	var deny : BitFieldResolvable<PermissionString>;
	var id : ts.AnyOf5<String, User, GuildMember, Message, Role>;
	@:optional
	var type : OverwriteType;
};