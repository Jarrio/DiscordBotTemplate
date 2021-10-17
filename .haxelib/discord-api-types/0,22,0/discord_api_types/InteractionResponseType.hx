package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#interaction-response-object-interaction-callback-type
**/
@:enum extern abstract InteractionResponseType(Int) from Int to Int {
	/**
		ACK a `Ping`
	**/
	var Pong = 1;
	/**
		Respond to an interaction with a message
	**/
	var ChannelMessageWithSource = 4;
	/**
		ACK an interaction and edit to a response later, the user sees a loading state
	**/
	var DeferredChannelMessageWithSource = 5;
	/**
		ACK a button interaction and update it to a loading state
	**/
	var DeferredMessageUpdate = 6;
	/**
		ACK a button interaction and edit the message to which the button was attached
	**/
	var UpdateMessage = 7;
}