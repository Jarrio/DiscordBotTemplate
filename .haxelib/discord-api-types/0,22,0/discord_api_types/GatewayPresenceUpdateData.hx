package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#update-presence-gateway-presence-update-structure
**/
typedef GatewayPresenceUpdateData = {
	/**
		Unix time (in milliseconds) of when the client went idle, or `null` if the client is not idle
	**/
	var since : GatewayHeartbeatData;
	/**
		The user's activities
		
		See https://discord.com/developers/docs/topics/gateway#activity-object
	**/
	var activities : Array<{
		var name : Dynamic;
		var type : Dynamic;
		var url : Dynamic;
	}>;
	/**
		The user's new status
		
		See https://discord.com/developers/docs/topics/gateway#update-presence-status-types
	**/
	var status : Dynamic;
	/**
		Whether or not the client is afk
	**/
	var afk : Bool;
};