package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#message-object-message-activity-types
**/
@:enum extern abstract MessageActivityType(Int) from Int to Int {
	var Join = 1;
	var Spectate = 2;
	var Listen = 3;
	var JoinRequest = 5;
}