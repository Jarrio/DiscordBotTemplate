package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/message-components#message-components
**/
typedef APIMessageComponent = ts.AnyOf4<APIActionRowComponent, APIButtonComponentWithCustomId, APIButtonComponentWithURL, APISelectMenuComponent>;