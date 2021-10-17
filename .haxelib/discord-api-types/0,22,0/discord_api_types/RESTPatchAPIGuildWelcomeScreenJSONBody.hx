package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#modify-guild-welcome-screen
**/
typedef RESTPatchAPIGuildWelcomeScreenJSONBody = {
	/**
		Whether the welcome screen is enabled
	**/
	@:optional
	var enabled : Bool;
};