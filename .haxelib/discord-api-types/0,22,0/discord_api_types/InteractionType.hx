package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#interaction-object-interaction-request-type
**/
@:enum extern abstract InteractionType(Int) from Int to Int {
	var Ping = 1;
	var ApplicationCommand = 2;
	var MessageComponent = 3;
}