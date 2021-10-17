package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/message-components#action-rows
**/
typedef APIActionRowComponent = {
	/**
		The components in the ActionRow
	**/
	var components : Array<ts.AnyOf3<APIButtonComponentWithCustomId, APIButtonComponentWithURL, APISelectMenuComponent>>;
	/**
		The type of the component
	**/
	var type : Int;
};