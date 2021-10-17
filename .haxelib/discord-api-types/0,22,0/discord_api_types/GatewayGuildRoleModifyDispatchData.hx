package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-role-create
	https://discord.com/developers/docs/topics/gateway#guild-role-update
**/
typedef GatewayGuildRoleModifyDispatchData = {
	/**
		The id of the guild
	**/
	var guild_id : Dynamic;
	/**
		The role created or updated
		
		See https://discord.com/developers/docs/topics/permissions#role-object
	**/
	var role : Dynamic;
};