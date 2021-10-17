package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#application-command-object-application-command-option-choice-structure
**/
typedef APIApplicationCommandOptionChoice = {
	var name : String;
	var value : ts.AnyOf2<String, Float>;
};