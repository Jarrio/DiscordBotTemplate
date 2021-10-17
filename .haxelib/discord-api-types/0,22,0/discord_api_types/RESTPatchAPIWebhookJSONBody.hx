package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#modify-webhook
**/
typedef RESTPatchAPIWebhookJSONBody = {
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
	/**
		The new channel id this webhook should be moved to
	**/
	@:optional
	var channel_id : Dynamic;
};