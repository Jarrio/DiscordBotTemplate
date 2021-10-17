package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-ban-add
	https://discord.com/developers/docs/topics/gateway#guild-ban-remove
**/
typedef GatewayGuildBanModifyDispatch = DataPayload<String, GatewayGuildBanModifyDispatchData>;