package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/message-components#component-types
**/
@:enum extern abstract ComponentType(Int) from Int to Int {
	/**
		Action Row component
	**/
	var ActionRow = 1;
	/**
		Button component
	**/
	var Button = 2;
	/**
		Select Menu component
	**/
	var SelectMenu = 3;
}