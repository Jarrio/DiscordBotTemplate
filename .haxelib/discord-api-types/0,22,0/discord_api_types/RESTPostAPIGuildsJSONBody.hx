package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#create-guild
**/
typedef RESTPostAPIGuildsJSONBody = {
	/**
		Name of the guild (2-100 characters)
	**/
	var name : String;
	/**
		Voice region id
		
		See https://discord.com/developers/docs/resources/voice#voice-region-object
	**/
	@:optional
	var region : String;
	/**
		base64 1024x1024 png/jpeg image for the guild icon
		
		See https://discord.com/developers/docs/reference#image-data
	**/
	@:optional
	var icon : String;
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
		New guild roles
		
		**When using this parameter, the first member of the array is used to change properties of the guild's @everyone role.
		If you are trying to bootstrap a guild with additional roles, keep this in mind.**
		
		*When using this parameter, the required `id` field within each role object is an integer placeholder,
		and will be replaced by the API upon consumption. Its purpose is to allow you to overwrite a role's permissions
		in a channel when also passing in channels with the channels array.*
		
		See https://discord.com/developers/docs/topics/permissions#role-object
	**/
	@:optional
	var roles : Array<APIGuildCreateRole>;
	/**
		New guild's channels
		
		**When using the channels parameter, the `position` field is ignored, and none of the default channels are created.**
		
		*When using the channels parameter, the `id` field within each channel object may be set to an integer placeholder,
		and will be replaced by the API upon consumption. Its purpose is to allow you to create `GUILD_CATEGORY` channels
		by setting the `parent_id` field on any children to the category's id field.
		Category channels must be listed before any children.*
		
		See https://discord.com/developers/docs/resources/channel#channel-object
	**/
	@:optional
	var channels : Array<APIGuildCreatePartialChannel>;
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
};