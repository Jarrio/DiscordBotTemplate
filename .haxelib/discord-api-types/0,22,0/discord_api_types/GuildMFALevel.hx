package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-mfa-level
**/
@:enum extern abstract GuildMFALevel(Int) from Int to Int {
	var None = 0;
	var Elevated = 1;
}