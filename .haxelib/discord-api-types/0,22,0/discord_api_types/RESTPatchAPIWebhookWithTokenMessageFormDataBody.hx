package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#edit-webhook-message
**/
typedef RESTPatchAPIWebhookWithTokenMessageFormDataBody = ts.AnyOf2<{
	/**
		JSON stringified message body
	**/
	@:optional
	var payload_json : String;
	/**
		The file contents
	**/
	var file : Any;
}, RESTPatchAPIWebhookWithTokenMessageJSONBody & {
	/**
		The file contents
	**/
	var file : Any;
}>;