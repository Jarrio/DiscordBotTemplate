package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#bulk-delete-messages
**/
typedef RESTPostAPIChannelMessagesBulkDeleteJSONBody = {
	/**
		An array of message ids to delete (2-100)
	**/
	var messages : Array<Dynamic>;
};