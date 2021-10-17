package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#activity-object-activity-assets
**/
typedef GatewayActivityAssets = {
	@:optional
	var large_image : String;
	@:optional
	var large_text : String;
	@:optional
	var small_image : String;
	@:optional
	var small_text : String;
};