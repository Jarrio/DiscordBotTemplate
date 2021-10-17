package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#activity-object-activity-secrets
**/
typedef GatewayActivitySecrets = {
	@:optional
	var join : String;
	@:optional
	var spectate : String;
	@:optional
	var match : String;
};