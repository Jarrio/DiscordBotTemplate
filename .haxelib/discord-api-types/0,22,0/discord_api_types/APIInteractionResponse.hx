package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#interaction-response-object
**/
typedef APIInteractionResponse = ts.AnyOf5<APIInteractionResponsePong, APIInteractionResponseChannelMessageWithSource, APIInteractionResponseDeferredChannelMessageWithSource, APIInteractionResponseDeferredMessageUpdate, APIInteractionResponseUpdateMessage>;