package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#interaction-object-interaction-structure
**/
typedef APIApplicationCommandInteractionData = {
	var id : Dynamic;
	var name : String;
	@:optional
	var options : Array<APIApplicationCommandInteractionDataOption>;
	@:optional
	var resolved : {
		@:optional
		var users : { };
		@:optional
		var roles : { };
		@:optional
		var members : { };
		@:optional
		var channels : { };
	};
};