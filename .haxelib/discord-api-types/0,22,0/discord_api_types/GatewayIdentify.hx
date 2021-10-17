package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#identify
**/
typedef GatewayIdentify = {
	var op : Int;
	var d : GatewayIdentifyData;
};