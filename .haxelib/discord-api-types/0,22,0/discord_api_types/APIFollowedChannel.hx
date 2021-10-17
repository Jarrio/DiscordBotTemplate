package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#followed-channel-object
**/
typedef APIFollowedChannel = {
	/**
		Source channel id
	**/
	var channel_id : Dynamic;
	/**
		Created target webhook id
	**/
	var webhook_id : Dynamic;
};