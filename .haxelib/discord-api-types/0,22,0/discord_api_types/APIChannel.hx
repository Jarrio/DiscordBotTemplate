package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#channel-object-channel-structure
**/
typedef APIChannel = {
	/**
		The id of the guild (may be missing for some channel objects received over gateway guild dispatches)
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		Sorting position of the channel
	**/
	@:optional
	var position : Float;
	/**
		Explicit permission overwrites for members and roles
		
		See https://discord.com/developers/docs/resources/channel#overwrite-object
	**/
	@:optional
	var permission_overwrites : Array<APIOverwrite>;
	/**
		The channel topic (0-1024 characters)
	**/
	@:optional
	var topic : String;
	/**
		Whether the channel is nsfw
	**/
	@:optional
	var nsfw : Bool;
	/**
		The id of the last message sent in this channel (may not point to an existing or valid message)
	**/
	@:optional
	var last_message_id : Dynamic;
	/**
		The bitrate (in bits) of the voice channel
	**/
	@:optional
	var bitrate : Float;
	/**
		The user limit of the voice channel
	**/
	@:optional
	var user_limit : Float;
	/**
		Amount of seconds a user has to wait before sending another message (0-21600);
		bots, as well as users with the permission `MANAGE_MESSAGES` or `MANAGE_CHANNELS`, are unaffected
		
		`rate_limit_per_user` also applies to thread creation. Users can send one message and create one thread during each `rate_limit_per_user` interval.
		
		For thread channels, `rate_limit_per_user` is only returned if the field is set to a non-zero and non-null value.
		The absence of this field in API calls and Gateway events should indicate that slowmode has been reset to the default value.
	**/
	@:optional
	var rate_limit_per_user : Float;
	/**
		The recipients of the DM
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var recipients : Array<Dynamic>;
	/**
		Icon hash
	**/
	@:optional
	var icon : String;
	/**
		ID of the DM creator or thread creator
	**/
	@:optional
	var owner_id : Dynamic;
	/**
		Application id of the group DM creator if it is bot-created
	**/
	@:optional
	var application_id : Dynamic;
	/**
		ID of the parent category for a channel (each parent category can contain up to 50 channels)
		
		OR
		
		ID of the parent channel for a thread
	**/
	@:optional
	var parent_id : Dynamic;
	/**
		When the last pinned message was pinned.
		This may be `null` in events such as `GUILD_CREATE` when a message is not pinned
	**/
	@:optional
	var last_pin_timestamp : String;
	/**
		Voice region id for the voice or stage channel, automatic when set to `null`
		
		See https://discord.com/developers/docs/resources/voice#voice-region-object
	**/
	@:optional
	var rtc_region : String;
	/**
		The camera video quality mode of the voice channel, `1` when not present
		
		See https://discord.com/developers/docs/resources/channel#channel-object-video-quality-modes
	**/
	@:optional
	var video_quality_mode : VideoQualityMode;
	/**
		The approximate message count of the thread, does not count above 50 even if there are more messages
	**/
	@:optional
	var message_count : Float;
	/**
		The approximate member count of the thread, does not count above 50 even if there are more members
	**/
	@:optional
	var member_count : Float;
	/**
		The metadata for a thread channel not shared by other channels
	**/
	@:optional
	var thread_metadata : APIThreadMetadata;
	/**
		The client users member for the thread, only included in select endpoints
	**/
	@:optional
	var member : APIThreadMember;
	/**
		Default duration for newly created threads, in minutes, to automatically archive the thread after recent activity
	**/
	@:optional
	var default_auto_archive_duration : ThreadAutoArchiveDuration;
	/**
		The id of the channel
	**/
	var id : Dynamic;
	/**
		The type of the channel
		
		See https://discord.com/developers/docs/resources/channel#channel-object-channel-types
	**/
	var type : ChannelType;
	/**
		The name of the channel (2-100 characters)
	**/
	@:optional
	var name : String;
};