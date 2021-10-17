package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-member-remove
**/
typedef GatewayGuildMemberRemoveDispatchData = {
	/**
		The id of the guild
	**/
	var guild_id : Dynamic;
	/**
		The user who was removed
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var user : Dynamic;
};