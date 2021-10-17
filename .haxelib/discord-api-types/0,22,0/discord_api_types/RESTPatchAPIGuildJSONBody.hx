package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#modify-guild
**/
typedef RESTPatchAPIGuildJSONBody = {
	/**
		New name for the guild (2-100 characters)
	**/
	@:optional
	var name : String;
	/**
		Voice region id
		
		See https://discord.com/developers/docs/resources/voice#voice-region-object
	**/
	@:optional
	var region : String;
	/**
		Verification level
		
		See https://discord.com/developers/docs/resources/guild#guild-object-verification-level
	**/
	@:optional
	var verification_level : Dynamic;
	/**
		Default message notification level
		
		See https://discord.com/developers/docs/resources/guild#guild-object-default-message-notification-level
	**/
	@:optional
	var default_message_notifications : Dynamic;
	/**
		Explicit content filter level
		
		See https://discord.com/developers/docs/resources/guild#guild-object-explicit-content-filter-level
	**/
	@:optional
	var explicit_content_filter : Dynamic;
	/**
		ID for afk channel
	**/
	@:optional
	var afk_channel_id : Dynamic;
	/**
		AFK timeout in seconds
	**/
	@:optional
	var afk_timeout : Float;
	/**
		base64 1024x1024 png/jpeg/gif image for the guild icon (can be animated gif when the guild has `ANIMATED_ICON` feature)
		
		See https://discord.com/developers/docs/reference#image-data
	**/
	@:optional
	var icon : String;
	/**
		User id to transfer guild ownership to (must be owner)
	**/
	@:optional
	var owner_id : Dynamic;
	/**
		base64 16:9 png/jpeg image for the guild splash (when the guild has `INVITE_SPLASH` feature)
		
		See https://discord.com/developers/docs/reference#image-data
	**/
	@:optional
	var splash : String;
	/**
		base64 png/jpeg image for the guild discovery splash (when the guild has `DISCOVERABLE` feature)
	**/
	@:optional
	var discovery_splash : String;
	/**
		base64 16:9 png/jpeg image for the guild banner (when the guild has `BANNER` feature)
	**/
	@:optional
	var banner : String;
	/**
		The id of the channel where guild notices such as welcome messages and boost events are posted
	**/
	@:optional
	var system_channel_id : Dynamic;
	/**
		System channel flags
		
		See https://discord.com/developers/docs/resources/guild#guild-object-system-channel-flags
	**/
	@:optional
	var system_channel_flags : Dynamic;
	/**
		The id of the channel where Community guilds display rules and/or guidelines
	**/
	@:optional
	var rules_channel_id : Dynamic;
	/**
		The id of the channel where admins and moderators of Community guilds receive notices from Discord
	**/
	@:optional
	var public_updates_channel_id : Dynamic;
	/**
		The preferred locale of a Community guild used in server discovery and notices from Discord; defaults to "en-US"
	**/
	@:optional
	var preferred_locale : String;
	/**
		Enabled guild features
		
		See https://discord.com/developers/docs/resources/guild#guild-object-guild-features
	**/
	@:optional
	var features : Array<Dynamic>;
	/**
		The description for the guild, if the guild is discoverable
	**/
	@:optional
	var description : String;
};