package discord_api_types;

typedef APIInteractionResponseUpdateMessage = {
	var type : Int;
	@:optional
	var data : APIInteractionResponseCallbackData;
};