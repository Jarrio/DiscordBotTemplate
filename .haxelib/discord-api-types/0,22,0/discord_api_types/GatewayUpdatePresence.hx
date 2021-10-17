package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#update-status
**/
typedef GatewayUpdatePresence = {
	var op : Int;
	var d : GatewayPresenceUpdateData;
};