package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-guild-structure
**/
typedef APIGuild = {
	/**
		Icon hash, returned when in the template object
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	@:optional
	var icon_hash : String;
	/**
		Discovery splash hash; only present for guilds with the "DISCOVERABLE" feature
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var discovery_splash : Null<String>;
	/**
		`true` if the user is the owner of the guild
		
		**This field is only received from https://discord.com/developers/docs/resources/user#get-current-user-guilds**
	**/
	@:optional
	var owner : Bool;
	/**
		ID of owner
	**/
	var owner_id : Dynamic;
	/**
		Total permissions for the user in the guild (excludes overrides)
		
		**This field is only received from https://discord.com/developers/docs/resources/user#get-current-user-guilds**
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	@:optional
	var permissions : js.html.Permissions;
	/**
		Voice region id for the guild
		
		See https://discord.com/developers/docs/resources/voice#voice-region-object
	**/
	var region : String;
	/**
		ID of afk channel
	**/
	var afk_channel_id : Dynamic;
	/**
		afk timeout in seconds
	**/
	var afk_timeout : Float;
	/**
		`true` if the guild widget is enabled
	**/
	@:optional
	var widget_enabled : Bool;
	/**
		The channel id that the widget will generate an invite to, or `null` if set to no invite
	**/
	@:optional
	var widget_channel_id : Dynamic;
	/**
		Verification level required for the guild
		
		See https://discord.com/developers/docs/resources/guild#guild-object-verification-level
	**/
	var verification_level : GuildVerificationLevel;
	/**
		Default message notifications level
		
		See https://discord.com/developers/docs/resources/guild#guild-object-default-message-notification-level
	**/
	var default_message_notifications : GuildDefaultMessageNotifications;
	/**
		Explicit content filter level
		
		See https://discord.com/developers/docs/resources/guild#guild-object-explicit-content-filter-level
	**/
	var explicit_content_filter : GuildExplicitContentFilter;
	/**
		Roles in the guild
		
		See https://discord.com/developers/docs/topics/permissions#role-object
	**/
	var roles : Array<Dynamic>;
	/**
		Custom guild emojis
		
		See https://discord.com/developers/docs/resources/emoji#emoji-object
	**/
	var emojis : Array<Dynamic>;
	/**
		Enabled guild features
		
		See https://discord.com/developers/docs/resources/guild#guild-object-guild-features
	**/
	var features : Array<GuildFeature>;
	/**
		Required MFA level for the guild
		
		See https://discord.com/developers/docs/resources/guild#guild-object-mfa-level
	**/
	var mfa_level : GuildMFALevel;
	/**
		Application id of the guild creator if it is bot-created
	**/
	var application_id : Dynamic;
	/**
		The id of the channel where guild notices such as welcome messages and boost events are posted
	**/
	var system_channel_id : Dynamic;
	/**
		System channel flags
		
		See https://discord.com/developers/docs/resources/guild#guild-object-system-channel-flags
	**/
	var system_channel_flags : GuildSystemChannelFlags;
	/**
		The id of the channel where Community guilds can display rules and/or guidelines
	**/
	var rules_channel_id : Dynamic;
	/**
		When this guild was joined at
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
	**/
	@:optional
	var joined_at : String;
	/**
		`true` if this is considered a large guild
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
	**/
	@:optional
	var large : Bool;
	/**
		Total number of members in this guild
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
	**/
	@:optional
	var member_count : Float;
	/**
		States of members currently in voice channels; lacks the `guild_id` key
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
		
		See https://discord.com/developers/docs/resources/voice#voice-state-object
	**/
	@:optional
	var voice_states : Array<{ }>;
	/**
		Users in the guild
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
		
		See https://discord.com/developers/docs/resources/guild#guild-member-object
	**/
	@:optional
	var members : Array<APIGuildMember>;
	/**
		Channels in the guild
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
		
		See https://discord.com/developers/docs/resources/channel#channel-object
	**/
	@:optional
	var channels : Array<Dynamic>;
	/**
		Threads in the guild
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
		
		See https://discord.com/developers/docs/resources/channel#channel-object
	**/
	@:optional
	var threads : Array<Dynamic>;
	/**
		Presences of the members in the guild, will only include non-offline members if the size is greater than `large_threshold`
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
		
		See https://discord.com/developers/docs/topics/gateway#presence-update
	**/
	@:optional
	var presences : Array<Dynamic>;
	/**
		The maximum number of presences for the guild (`null` is always returned, apart from the largest of guilds)
	**/
	@:optional
	var max_presences : Float;
	/**
		The maximum number of members for the guild
	**/
	@:optional
	var max_members : Float;
	/**
		The vanity url code for the guild
	**/
	var vanity_url_code : Null<String>;
	/**
		The description for the guild, if the guild is discoverable
	**/
	var description : Null<String>;
	/**
		Banner hash
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var banner : Null<String>;
	/**
		Premium tier (Server Boost level)
		
		See https://discord.com/developers/docs/resources/guild#guild-object-premium-tier
	**/
	var premium_tier : GuildPremiumTier;
	/**
		The number of boosts this guild currently has
	**/
	@:optional
	var premium_subscription_count : Float;
	/**
		The preferred locale of a Community guild; used in guild discovery and notices from Discord; defaults to "en-US"
	**/
	var preferred_locale : String;
	/**
		The id of the channel where admins and moderators of Community guilds receive notices from Discord
	**/
	var public_updates_channel_id : Dynamic;
	/**
		The maximum amount of users in a video channel
	**/
	@:optional
	var max_video_channel_users : Float;
	/**
		**This field is only received from https://discord.com/developers/docs/resources/guild#get-guild with the `with_counts` query parameter set to `true`**
	**/
	@:optional
	var approximate_member_count : Float;
	/**
		**This field is only received from https://discord.com/developers/docs/resources/guild#get-guild with the `with_counts` query parameter set to `true`**
	**/
	@:optional
	var approximate_presence_count : Float;
	/**
		The welcome screen of a Community guild, shown to new members
		
		Returned in the invite object
	**/
	@:optional
	var welcome_screen : APIGuildWelcomeScreen;
	/**
		The nsfw level of the guild
		
		See https://discord.com/developers/docs/resources/guild#guild-object-guild-nsfw-level
	**/
	var nsfw_level : GuildNSFWLevel;
	/**
		The stage instances in the guild
		
		**This field is only sent within the [GUILD_CREATE](https://discord.com/developers/docs/topics/gateway#guild-create) event**
		
		See https://discord.com/developers/docs/resources/stage-instance#stage-instance-object-stage-instance-structure
	**/
	@:optional
	var stage_instances : Array<Dynamic>;
	/**
		Custom guild stickers
		
		See https://discord.com/developers/docs/resources/sticker#sticker-object
	**/
	var stickers : Array<Dynamic>;
	/**
		Guild name (2-100 characters, excluding trailing and leading whitespace)
	**/
	var name : String;
	/**
		Icon hash
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var icon : Null<String>;
	/**
		Splash hash
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var splash : Null<String>;
	/**
		`true` if this guild is unavailable due to an outage
	**/
	@:optional
	var unavailable : Bool;
	/**
		Guild id
	**/
	var id : Dynamic;
};