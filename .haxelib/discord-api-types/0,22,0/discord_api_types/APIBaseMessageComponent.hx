package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/message-components#component-object
**/
typedef APIBaseMessageComponent<T> = {
	/**
		The type of the component
	**/
	var type : T;
};