package discord_api_types;

/**
	https://discord.com/developers/docs/topics/permissions#role-object-role-tags-structure
**/
typedef APIRoleTags = {
	/**
		The id of the bot this role belongs to
	**/
	@:optional
	var bot_id : Dynamic;
	/**
		Whether this is the guild's premium subscriber role
	**/
	@:optional
	var premium_subscriber : Any;
	/**
		The id of the integration this role belongs to
	**/
	@:optional
	var integration_id : Dynamic;
};