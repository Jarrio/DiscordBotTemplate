package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-ban-add
	https://discord.com/developers/docs/topics/gateway#guild-ban-remove
**/
typedef GatewayGuildBanModifyDispatchData = {
	/**
		ID of the guild
	**/
	var guild_id : Dynamic;
	/**
		The banned user
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var user : Dynamic;
};