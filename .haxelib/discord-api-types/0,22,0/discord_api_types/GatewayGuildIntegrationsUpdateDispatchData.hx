package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-integrations-update
**/
typedef GatewayGuildIntegrationsUpdateDispatchData = {
	/**
		ID of the guild whose integrations were updated
	**/
	var guild_id : Dynamic;
};