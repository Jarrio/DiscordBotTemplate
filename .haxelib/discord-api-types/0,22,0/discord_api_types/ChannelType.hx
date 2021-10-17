package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#channel-object-channel-types
**/
@:enum extern abstract ChannelType(Int) from Int to Int {
	/**
		A text channel within a guild
	**/
	var GuildText = 0;
	/**
		A direct message between users
	**/
	var DM = 1;
	/**
		A voice channel within a guild
	**/
	var GuildVoice = 2;
	/**
		A direct message between multiple users
	**/
	var GroupDM = 3;
	/**
		An organizational category that contains up to 50 channels
		
		See https://support.discord.com/hc/en-us/articles/115001580171-Channel-Categories-101
	**/
	var GuildCategory = 4;
	/**
		A channel that users can follow and crosspost into their own guild
		
		See https://support.discord.com/hc/en-us/articles/360032008192
	**/
	var GuildNews = 5;
	/**
		A channel in which game developers can sell their game on Discord
		
		See https://discord.com/developers/docs/game-and-server-management/special-channels
	**/
	var GuildStore = 6;
	/**
		A thread channel (public) within a Guild News channel
	**/
	var GuildNewsThread = 10;
	/**
		A public thread channel within a Guild Text channel
	**/
	var GuildPublicThread = 11;
	/**
		A private thread channel within a Guild Text channel
	**/
	var GuildPrivateThread = 12;
	/**
		A voice channel for hosting events with an audience
		
		See https://support.discord.com/hc/en-us/articles/1500005513722
	**/
	var GuildStageVoice = 13;
}