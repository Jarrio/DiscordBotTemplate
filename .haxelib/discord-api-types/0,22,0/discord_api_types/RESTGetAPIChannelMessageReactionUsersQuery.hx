package discord_api_types;

typedef RESTGetAPIChannelMessageReactionUsersQuery = {
	/**
		Get users after this user ID
	**/
	@:optional
	var after : Dynamic;
	/**
		Max number of users to return (1-100)
	**/
	@:optional
	var limit : Float;
};