package discord_js;

enum abstract ChannelType(String) {
	var GUILD_TEXT;
	var DM;
	var GUILD_VOICE;
	var GROUP_DM;
	var GUILD_CATEGORY;
	var GUILD_NEWS;
	var GUILD_STORE;
	var GUILD_NEWS_THREAD;
	var GUILD_PUBLIC_THREAD;
	var GUILD_PRIVATE_THREAD;
	var GUILD_STAGE_VOICE;
	var UNKNOWN;
}