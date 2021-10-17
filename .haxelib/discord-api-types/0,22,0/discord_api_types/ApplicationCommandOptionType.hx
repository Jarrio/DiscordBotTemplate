package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#application-command-object-application-command-option-type
**/
@:enum extern abstract ApplicationCommandOptionType(Int) from Int to Int {
	var Subcommand = 1;
	var SubcommandGroup = 2;
	var String = 3;
	var Integer = 4;
	var Boolean = 5;
	var User = 6;
	var Channel = 7;
	var Role = 8;
	var Mentionable = 9;
	var Number = 10;
}