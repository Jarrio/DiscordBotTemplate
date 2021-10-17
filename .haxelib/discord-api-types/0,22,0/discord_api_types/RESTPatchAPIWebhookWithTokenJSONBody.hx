package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#modify-webhook-with-token
**/
typedef RESTPatchAPIWebhookWithTokenJSONBody = {
	/**
		The default name of the webhook
	**/
	@:optional
	var name : String;
	/**
		Image for the default webhook avatar
		
		See https://discord.com/developers/docs/reference#image-data
	**/
	@:optional
	var avatar : String;
};