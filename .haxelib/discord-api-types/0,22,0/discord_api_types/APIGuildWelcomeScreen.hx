package discord_api_types;

typedef APIGuildWelcomeScreen = {
	/**
		The welcome screen short message
	**/
	var description : Null<String>;
	/**
		Array of suggested channels
	**/
	var welcome_channels : Array<APIGuildWelcomeScreenChannel>;
};