package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#edit-webhook-message
**/
typedef RESTPatchAPIWebhookWithTokenMessageJSONBody = {
	/**
		Attached files to keep
		
		See https://discord.com/developers/docs/resources/channel#attachment-object
	**/
	@:optional
	var attachments : Array<Dynamic>;
};