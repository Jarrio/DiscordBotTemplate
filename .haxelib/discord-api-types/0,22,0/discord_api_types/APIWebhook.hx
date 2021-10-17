package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#webhook-object
**/
typedef APIWebhook = {
	/**
		The id of the webhook
	**/
	var id : Dynamic;
	/**
		The type of the webhook
		
		See https://discord.com/developers/docs/resources/webhook#webhook-object-webhook-types
	**/
	var type : WebhookType;
	/**
		The guild id this webhook is for
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The channel id this webhook is for
	**/
	var channel_id : Dynamic;
	/**
		The user this webhook was created by (not returned when getting a webhook with its token)
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var user : Dynamic;
	/**
		The default name of the webhook
	**/
	var name : Null<String>;
	/**
		The default avatar of the webhook
	**/
	var avatar : Null<String>;
	/**
		The secure token of the webhook (returned for Incoming Webhooks)
	**/
	@:optional
	var token : String;
	/**
		The bot/OAuth2 application that created this webhook
	**/
	var application_id : Dynamic;
	/**
		The guild of the channel that this webhook is following (returned for Channel Follower Webhooks)
	**/
	@:optional
	var source_guild : Dynamic;
	/**
		The channel that this webhook is following (returned for Channel Follower Webhooks)
	**/
	@:optional
	var source_channel : Dynamic;
	/**
		The url used for executing the webhook (returned by the webhooks OAuth2 flow)
	**/
	@:optional
	var url : String;
};