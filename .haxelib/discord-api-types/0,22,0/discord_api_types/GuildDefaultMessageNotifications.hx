package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-default-message-notification-level
**/
@:enum extern abstract GuildDefaultMessageNotifications(Int) from Int to Int {
	var AllMessages = 0;
	var OnlyMentions = 1;
}