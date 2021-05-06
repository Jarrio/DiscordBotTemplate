package discord_js;

typedef PermissionOverwriteOptions = {
	var allow : BitFieldResolvable<PermissionString>;
	var deny : BitFieldResolvable<PermissionString>;
	var id : ts.AnyOf5<String, User, GuildMember, Message, Role>;
};