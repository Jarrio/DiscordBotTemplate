package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#integration-object-integration-expire-behaviors
**/
@:enum extern abstract IntegrationExpireBehavior(Int) from Int to Int {
	var RemoveRole = 0;
	var Kick = 1;
}