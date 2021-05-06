package discord_js;

typedef ChannelCreationOverwrites = {
	@:optional
	var allow : BitFieldResolvable<PermissionString>;
	@:optional
	var deny : BitFieldResolvable<PermissionString>;
	var id : ts.AnyOf5<String, User, GuildMember, Message, Role>;
};