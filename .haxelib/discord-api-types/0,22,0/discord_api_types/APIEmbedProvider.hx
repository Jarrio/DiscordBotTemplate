package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-provider-structure
**/
typedef APIEmbedProvider = {
	/**
		Name of provider
	**/
	@:optional
	var name : String;
	/**
		URL of provider
	**/
	@:optional
	var url : String;
};