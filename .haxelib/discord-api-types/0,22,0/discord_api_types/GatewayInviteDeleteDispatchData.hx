package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#invite-delete
**/
typedef GatewayInviteDeleteDispatchData = {
	/**
		The channel of the invite
	**/
	var channel_id : Dynamic;
	/**
		The guild of the invite
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The unique invite code
		
		See https://discord.com/developers/docs/resources/invite#invite-object
	**/
	var code : String;
};