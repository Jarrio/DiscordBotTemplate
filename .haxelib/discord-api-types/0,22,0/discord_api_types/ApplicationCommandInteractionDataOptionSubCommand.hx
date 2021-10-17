package discord_api_types;

typedef ApplicationCommandInteractionDataOptionSubCommand = {
	var name : String;
	var type : Int;
	var options : Array<APIApplicationCommandInteractionDataOptionWithValues>;
};