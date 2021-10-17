package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#heartbeating
**/
typedef GatewayHeartbeat = {
	var op : Int;
	var d : GatewayHeartbeatData;
};