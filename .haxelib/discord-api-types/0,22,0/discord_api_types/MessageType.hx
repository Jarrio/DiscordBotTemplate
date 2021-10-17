package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#message-object-message-types
**/
@:enum extern abstract MessageType(Int) from Int to Int {
	var Default = 0;
	var RecipientAdd = 1;
	var RecipientRemove = 2;
	var Call = 3;
	var ChannelNameChange = 4;
	var ChannelIconChange = 5;
	var ChannelPinnedMessage = 6;
	var GuildMemberJoin = 7;
	var UserPremiumGuildSubscription = 8;
	var UserPremiumGuildSubscriptionTier1 = 9;
	var UserPremiumGuildSubscriptionTier2 = 10;
	var UserPremiumGuildSubscriptionTier3 = 11;
	var ChannelFollowAdd = 12;
	var GuildDiscoveryDisqualified = 14;
	var GuildDiscoveryRequalified = 15;
	var GuildDiscoveryGracePeriodInitialWarning = 16;
	var GuildDiscoveryGracePeriodFinalWarning = 17;
	var ThreadCreated = 18;
	var Reply = 19;
	var ApplicationCommand = 20;
	var ThreadStarterMessage = 21;
	var GuildInviteReminder = 22;
}