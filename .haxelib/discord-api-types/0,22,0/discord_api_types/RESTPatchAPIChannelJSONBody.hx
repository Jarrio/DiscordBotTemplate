package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#modify-channel
**/
typedef RESTPatchAPIChannelJSONBody = {
	/**
		1-100 character channel name
		
		Channel types: all
	**/
	@:optional
	var name : String;
	/**
		The type of channel; only conversion between `text` and `news`
		is supported and only in guilds with the "NEWS" feature
		
		Channel types: text, news
	**/
	@:optional
	var type : Dynamic;
	/**
		The position of the channel in the left-hand listing
		
		Channel types: all excluding newsThread, publicThread, privateThread
	**/
	@:optional
	var position : Float;
	/**
		0-1024 character channel topic
		
		Channel types: text, news
	**/
	@:optional
	var topic : String;
	/**
		Whether the channel is nsfw
		
		Channel types: text, news, store
	**/
	@:optional
	var nsfw : Bool;
	/**
		Amount of seconds a user has to wait before sending another message (0-21600);
		bots, as well as users with the permission `MANAGE_MESSAGES` or `MANAGE_CHANNELS`,
		are unaffected
		
		Channel types: text, newsThread, publicThread, privateThread
	**/
	@:optional
	var rate_limit_per_user : Float;
	/**
		The bitrate (in bits) of the voice channel; 8000 to 96000 (128000 for VIP servers)
		
		Channel types: voice
	**/
	@:optional
	var bitrate : Float;
	/**
		The user limit of the voice channel; 0 refers to no limit, 1 to 99 refers to a user limit
		
		Channel types: voice
	**/
	@:optional
	var user_limit : Float;
	/**
		Channel or category-specific permissions
		
		Channel types: all excluding newsThread, publicThread, privateThread
	**/
	@:optional
	var permission_overwrites : Array<Dynamic>;
	/**
		ID of the new parent category for a channel
		
		Channel types: text, news, store, voice
	**/
	@:optional
	var parent_id : Dynamic;
	/**
		Voice region id for the voice or stage channel, automatic when set to `null`
		
		See https://discord.com/developers/docs/resources/voice#voice-region-object
	**/
	@:optional
	var rtc_region : String;
	/**
		The camera video quality mode of the voice channel
		
		See https://discord.com/developers/docs/resources/channel#channel-object-video-quality-modes
	**/
	@:optional
	var video_quality_mode : Dynamic;
	/**
		Whether the thread should be archived
		
		Channel types: newsThread, publicThread, privateThread
	**/
	@:optional
	var archived : Bool;
	/**
		The amount of time in minutes to wait before automatically archiving the thread
		
		Channel types: newsThread, publicThread, privateThread
	**/
	@:optional
	var auto_archive_duration : Dynamic;
	/**
		Whether the thread should be locked
		
		Channel types: newsThread, publicThread, privateThread
	**/
	@:optional
	var locked : Bool;
	/**
		Default duration for newly created threads, in minutes, to automatically archive the thread after recent activity
		
		Channel types: text, news
	**/
	@:optional
	var default_auto_archive_duration : Dynamic;
};