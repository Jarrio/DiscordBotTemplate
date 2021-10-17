package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#message-interaction-object-message-interaction-structure
**/
typedef APIMessageInteraction = {
	/**
		ID of the interaction
	**/
	var id : Dynamic;
	/**
		The type of interaction
	**/
	var type : Dynamic;
	/**
		The name of the ApplicationCommand
	**/
	var name : String;
	/**
		The user who invoked the interaction
	**/
	var user : Dynamic;
};