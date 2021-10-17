package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#commands-and-events-gateway-events
**/
@:enum extern abstract GatewayDispatchEvents(String) from String to String {
	var ApplicationCommandCreate = "APPLICATION_COMMAND_CREATE";
	var ApplicationCommandDelete = "APPLICATION_COMMAND_DELETE";
	var ApplicationCommandUpdate = "APPLICATION_COMMAND_UPDATE";
	var ChannelCreate = "CHANNEL_CREATE";
	var ChannelDelete = "CHANNEL_DELETE";
	var ChannelPinsUpdate = "CHANNEL_PINS_UPDATE";
	var ChannelUpdate = "CHANNEL_UPDATE";
	var GuildBanAdd = "GUILD_BAN_ADD";
	var GuildBanRemove = "GUILD_BAN_REMOVE";
	var GuildCreate = "GUILD_CREATE";
	var GuildDelete = "GUILD_DELETE";
	var GuildEmojisUpdate = "GUILD_EMOJIS_UPDATE";
	var GuildIntegrationsUpdate = "GUILD_INTEGRATIONS_UPDATE";
	var GuildMemberAdd = "GUILD_MEMBER_ADD";
	var GuildMemberRemove = "GUILD_MEMBER_REMOVE";
	var GuildMembersChunk = "GUILD_MEMBERS_CHUNK";
	var GuildMemberUpdate = "GUILD_MEMBER_UPDATE";
	var GuildRoleCreate = "GUILD_ROLE_CREATE";
	var GuildRoleDelete = "GUILD_ROLE_DELETE";
	var GuildRoleUpdate = "GUILD_ROLE_UPDATE";
	var GuildStickersUpdate = "GUILD_STICKERS_UPDATE";
	var GuildUpdate = "GUILD_UPDATE";
	var IntegrationCreate = "INTEGRATION_CREATE";
	var IntegrationDelete = "INTEGRATION_DELETE";
	var IntegrationUpdate = "INTEGRATION_UPDATE";
	var InteractionCreate = "INTERACTION_CREATE";
	var InviteCreate = "INVITE_CREATE";
	var InviteDelete = "INVITE_DELETE";
	var MessageCreate = "MESSAGE_CREATE";
	var MessageDelete = "MESSAGE_DELETE";
	var MessageDeleteBulk = "MESSAGE_DELETE_BULK";
	var MessageReactionAdd = "MESSAGE_REACTION_ADD";
	var MessageReactionRemove = "MESSAGE_REACTION_REMOVE";
	var MessageReactionRemoveAll = "MESSAGE_REACTION_REMOVE_ALL";
	var MessageReactionRemoveEmoji = "MESSAGE_REACTION_REMOVE_EMOJI";
	var MessageUpdate = "MESSAGE_UPDATE";
	var PresenceUpdate = "PRESENCE_UPDATE";
	var StageInstanceCreate = "STAGE_INSTANCE_CREATE";
	var StageInstanceDelete = "STAGE_INSTANCE_DELETE";
	var StageInstanceUpdate = "STAGE_INSTANCE_UPDATE";
	var Ready = "READY";
	var Resumed = "RESUMED";
	var ThreadCreate = "THREAD_CREATE";
	var ThreadDelete = "THREAD_DELETE";
	var ThreadListSync = "THREAD_LIST_SYNC";
	var ThreadMembersUpdate = "THREAD_MEMBERS_UPDATE";
	var ThreadMemberUpdate = "THREAD_MEMBER_UPDATE";
	var ThreadUpdate = "THREAD_UPDATE";
	var TypingStart = "TYPING_START";
	var UserUpdate = "USER_UPDATE";
	var VoiceServerUpdate = "VOICE_SERVER_UPDATE";
	var VoiceStateUpdate = "VOICE_STATE_UPDATE";
	var WebhooksUpdate = "WEBHOOKS_UPDATE";
}