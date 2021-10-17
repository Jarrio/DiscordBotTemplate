package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#get-channel-messages
**/
typedef RESTGetAPIChannelMessagesQuery = {
	/**
		Get messages around this message ID
	**/
	@:optional
	var around : Dynamic;
	/**
		Get messages before this message ID
	**/
	@:optional
	var before : Dynamic;
	/**
		Get messages after this message ID
	**/
	@:optional
	var after : Dynamic;
	/**
		Max number of messages to return (1-100)
	**/
	@:optional
	var limit : Float;
};