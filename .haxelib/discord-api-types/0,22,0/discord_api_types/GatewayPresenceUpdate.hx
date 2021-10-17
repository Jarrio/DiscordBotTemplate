package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#presence-update-presence-update-event-fields
**/
typedef GatewayPresenceUpdate = {
	/**
		The user presence is being updated for
		
		**The user object within this event can be partial, the only field which must be sent is the `id` field,
		everything else is optional.**
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var user : Dynamic;
	/**
		ID of the guild
	**/
	var guild_id : Dynamic;
	/**
		Either "idle", "dnd", "online", or "offline"
	**/
	@:optional
	var status : PresenceUpdateStatus;
	/**
		User's current activities
		
		See https://discord.com/developers/docs/topics/gateway#activity-object
	**/
	@:optional
	var activities : Array<GatewayActivity>;
	/**
		User's platform-dependent status
		
		See https://discord.com/developers/docs/topics/gateway#client-status-object
	**/
	@:optional
	var client_status : GatewayPresenceClientStatus;
};