package discord_api_types;

typedef APIGuildWelcomeScreenChannel = {
	/**
		The channel id that is suggested
	**/
	var channel_id : Dynamic;
	/**
		The description shown for the channel
	**/
	var description : String;
	/**
		The emoji id of the emoji that is shown on the left of the channel
	**/
	var emoji_id : Dynamic;
	/**
		The emoji name of the emoji that is shown on the left of the channel
	**/
	var emoji_name : Null<String>;
};