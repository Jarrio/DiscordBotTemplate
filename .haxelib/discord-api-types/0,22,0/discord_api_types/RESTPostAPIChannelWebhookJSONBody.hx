package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#create-webhook
**/
typedef RESTPostAPIChannelWebhookJSONBody = {
	/**
		Name of the webhook (1-80 characters)
	**/
	var name : String;
	/**
		Image for the default webhook avatar
		
		See https://discord.com/developers/docs/reference#image-data
	**/
	@:optional
	var avatar : String;
};