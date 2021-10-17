package discord_api_types;

/**
	https://discord.com/developers/docs/resources/webhook#execute-webhook
**/
typedef RESTPostAPIWebhookWithTokenJSONBody = {
	/**
		The message contents (up to 2000 characters)
	**/
	@:optional
	var content : String;
	/**
		Override the default username of the webhook
	**/
	@:optional
	var username : String;
	/**
		Override the default avatar of the webhook
	**/
	@:optional
	var avatar_url : String;
	/**
		`true` if this is a TTS message
	**/
	@:optional
	var tts : Bool;
	/**
		Embedded `rich` content
		
		See https://discord.com/developers/docs/resources/channel#embed-object
	**/
	@:optional
	var embeds : Array<Dynamic>;
	/**
		Allowed mentions for the message
		
		See https://discord.com/developers/docs/resources/channel#allowed-mentions-object
	**/
	@:optional
	var allowed_mentions : Dynamic;
	/**
		The components to include with the message
		
		Requires an application-owned webhook
		
		See https://discord.com/developers/docs/interactions/message-components#component-object
	**/
	@:optional
	var components : Array<Dynamic>;
};