package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#execute-webhook-querystring-params
**/
typedef RESTPostAPIWebhookWithTokenQuery = {
	/**
		Waits for server confirmation of message send before response, and returns the created message body
		(defaults to `false`; when `false` a message that is not saved does not return an error)
	**/
	@:optional
	var wait : Bool;
	/**
		Send a message to the specified thread within a webhook's channel. The thread will automatically be unarchived.
	**/
	@:optional
	var thread_id : Dynamic;
};