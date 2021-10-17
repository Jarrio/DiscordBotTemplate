package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#start-thread-with-message
**/
typedef RESTPostAPIChannelMessagesThreadsJSONBody = {
	/**
		1-100 character thread name
	**/
	var name : String;
	/**
		The amount of time in minutes to wait before automatically archiving the thread
		
		The 3 day and 7 day archive durations require the server to be boosted. The [guild features](https://discord.com/developers/docs/resources/guild#guild-object-guild-features) will indicate if a server is able to use those settings.
	**/
	var auto_archive_duration : Dynamic;
};