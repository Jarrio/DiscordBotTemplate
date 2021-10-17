package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#connecting-gateway-url-params
**/
typedef GatewayURLQuery = {
	var v : String;
	var encoding : String;
	@:optional
	var compress : String;
};