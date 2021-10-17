package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#thread-metadata-object-thread-metadata-structure
**/
typedef APIThreadMetadata = {
	/**
		Whether the thread is archived
	**/
	var archived : Bool;
	/**
		Duration in minutes to automatically archive the thread after recent activity, can be set to: 60, 1440, 4320, 10080
	**/
	var auto_archive_duration : ThreadAutoArchiveDuration;
	/**
		An ISO8601 timestamp when the thread's archive status was last changed, used for calculating recent activity
	**/
	var archive_timestamp : String;
	/**
		Whether the thread is locked; when a thread is locked, only users with `MANAGE_THREADS` can unarchive it
	**/
	@:optional
	var locked : Bool;
};