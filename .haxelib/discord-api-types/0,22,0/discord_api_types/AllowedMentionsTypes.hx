package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#allowed-mentions-object-allowed-mention-types
**/
@:enum extern abstract AllowedMentionsTypes(String) from String to String {
	/**
		Controls @everyone and @here mentions
	**/
	var Everyone = "everyone";
	/**
		Controls role mentions
	**/
	var Role = "roles";
	/**
		Controls user mentions
	**/
	var User = "users";
}