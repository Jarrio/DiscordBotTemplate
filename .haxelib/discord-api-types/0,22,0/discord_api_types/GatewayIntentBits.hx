package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#list-of-intents
**/
@:enum extern abstract GatewayIntentBits(Int) from Int to Int {
	var Guilds = 1;
	var GuildMembers = 2;
	var GuildBans = 4;
	var GuildEmojisAndStickers = 8;
	var GuildIntegrations = 16;
	var GuildWebhooks = 32;
	var GuildInvites = 64;
	var GuildVoiceStates = 128;
	var GuildPresences = 256;
	var GuildMessages = 512;
	var GuildMessageReactions = 1024;
	var GuildMessageTyping = 2048;
	var DirectMessages = 4096;
	var DirectMessageReactions = 8192;
	var DirectMessageTyping = 16384;
}