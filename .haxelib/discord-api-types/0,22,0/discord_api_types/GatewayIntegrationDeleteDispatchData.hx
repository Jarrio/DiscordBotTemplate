package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#integration-delete
**/
typedef GatewayIntegrationDeleteDispatchData = {
	/**
		Integration id
	**/
	var id : Dynamic;
	/**
		ID of the guild
	**/
	var guild_id : Dynamic;
	/**
		ID of the bot/OAuth2 application for this Discord integration
	**/
	@:optional
	var application_id : Dynamic;
};