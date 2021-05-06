package discord_js;

typedef InviteGenerationOptions = {
	@:optional
	var permissions : BitFieldResolvable<PermissionString>;
	@:optional
	var guild : GuildResolvable;
	@:optional
	var disableGuildSelect : Bool;
};