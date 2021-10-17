package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/message-components#button-object-button-styles
**/
@:enum extern abstract ButtonStyle(Int) from Int to Int {
	var Primary = 1;
	var Secondary = 2;
	var Success = 3;
	var Danger = 4;
	var Link = 5;
}