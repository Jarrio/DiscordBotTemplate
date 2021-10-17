package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#start-thread-without-message
**/
typedef RESTPostAPIChannelThreadsJSONBody = {
	/**
		The type of thread to create
		
		In API v9, `type` defaults to `PRIVATE_THREAD`.
		In API v10 this will be changed to be a required field, with no default.
		
		See https://discord.com/developers/docs/resources/channel#channel-object-channel-types
	**/
	@:optional
	var type : Dynamic;
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