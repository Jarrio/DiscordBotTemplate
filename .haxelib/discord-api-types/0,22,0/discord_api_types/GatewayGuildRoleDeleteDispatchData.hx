package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-role-delete
**/
typedef GatewayGuildRoleDeleteDispatchData = {
	/**
		The id of the guild
	**/
	var guild_id : Dynamic;
	/**
		The id of the role
	**/
	var role_id : Dynamic;
};