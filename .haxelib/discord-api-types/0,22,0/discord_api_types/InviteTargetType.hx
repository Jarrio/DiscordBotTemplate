package discord_api_types;

/**
	https://discord.com/developers/docs/resources/invite#invite-object-invite-target-types
**/
@:enum extern abstract InviteTargetType(Int) from Int to Int {
	var Stream = 1;
	var EmbeddedApplication = 2;
}