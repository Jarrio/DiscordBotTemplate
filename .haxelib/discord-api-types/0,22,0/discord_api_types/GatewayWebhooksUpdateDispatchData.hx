package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#webhooks-update
**/
typedef GatewayWebhooksUpdateDispatchData = {
	/**
		The id of the guild
	**/
	var guild_id : Dynamic;
	/**
		The id of the channel
	**/
	var channel_id : Dynamic;
};