package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#follow-news-channel
**/
typedef RESTPostAPIChannelFollowersJSONBody = {
	/**
		ID of target channel
	**/
	var webhook_channel_id : Dynamic;
};