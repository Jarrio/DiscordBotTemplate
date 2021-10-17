package discord_api_types;

/**
	https://discord.com/developers/docs/resources/audit-log#audit-log-entry-object-audit-log-events
**/
@:enum extern abstract AuditLogEvent(Int) from Int to Int {
	var GuildUpdate = 1;
	var ChannelCreate = 10;
	var ChannelUpdate = 11;
	var ChannelDelete = 12;
	var ChannelOverwriteCreate = 13;
	var ChannelOverwriteUpdate = 14;
	var ChannelOverwriteDelete = 15;
	var MemberKick = 20;
	var MemberPrune = 21;
	var MemberBanAdd = 22;
	var MemberBanRemove = 23;
	var MemberUpdate = 24;
	var MemberRoleUpdate = 25;
	var MemberMove = 26;
	var MemberDisconnect = 27;
	var BotAdd = 28;
	var RoleCreate = 30;
	var RoleUpdate = 31;
	var RoleDelete = 32;
	var InviteCreate = 40;
	var InviteUpdate = 41;
	var InviteDelete = 42;
	var WebhookCreate = 50;
	var WebhookUpdate = 51;
	var WebhookDelete = 52;
	var EmojiCreate = 60;
	var EmojiUpdate = 61;
	var EmojiDelete = 62;
	var MessageDelete = 72;
	var MessageBulkDelete = 73;
	var MessagePin = 74;
	var MessageUnpin = 75;
	var IntegrationCreate = 80;
	var IntegrationUpdate = 81;
	var IntegrationDelete = 82;
	var StageInstanceCreate = 83;
	var StageInstanceUpdate = 84;
	var StageInstanceDelete = 85;
	var StickerCreate = 90;
	var StickerUpdate = 91;
	var StickerDelete = 92;
	var ThreadCreate = 110;
	var ThreadUpdate = 111;
	var ThreadDelete = 112;
}