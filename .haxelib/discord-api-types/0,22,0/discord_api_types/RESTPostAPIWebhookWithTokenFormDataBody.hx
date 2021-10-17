package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#execute-webhook
**/
typedef RESTPostAPIWebhookWithTokenFormDataBody = ts.AnyOf2<{
	/**
		JSON stringified message body
	**/
	@:optional
	var payload_json : String;
	/**
		The file contents
	**/
	var file : Any;
}, RESTPostAPIWebhookWithTokenJSONBody & {
	/**
		The file contents
	**/
	var file : Any;
}>;