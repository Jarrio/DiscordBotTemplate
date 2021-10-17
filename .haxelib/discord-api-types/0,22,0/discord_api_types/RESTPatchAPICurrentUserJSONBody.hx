package discord_api_types;

/**
	https://discord.com/developers/docs/resources/user#modify-current-user
**/
typedef RESTPatchAPICurrentUserJSONBody = {
	/**
		User's username, if changed may cause the user's discriminator to be randomized
	**/
	@:optional
	var username : String;
	/**
		If passed, modifies the user's avatar
	**/
	@:optional
	var avatar : String;
};