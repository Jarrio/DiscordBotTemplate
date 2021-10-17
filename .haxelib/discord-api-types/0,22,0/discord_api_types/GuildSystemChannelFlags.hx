package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-system-channel-flags
**/
@:enum extern abstract GuildSystemChannelFlags(Int) from Int to Int {
	/**
		Suppress member join notifications
	**/
	var SuppressJoinNotifications = 1;
	/**
		Suppress server boost notifications
	**/
	var SuppressPremiumSubscriptions = 2;
	/**
		Suppress server setup tips
	**/
	var SuppressGuildReminderNotifications = 4;
}