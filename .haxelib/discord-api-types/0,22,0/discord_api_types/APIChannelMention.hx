package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#channel-mention-object-channel-mention-structure
**/
typedef APIChannelMention = {
	/**
		ID of the channel
	**/
	var id : Dynamic;
	/**
		ID of the guild containing the channel
	**/
	var guild_id : Dynamic;
	/**
		The type of channel
		
		See https://discord.com/developers/docs/resources/channel#channel-object-channel-types
	**/
	var type : ChannelType;
	/**
		The name of the channel
	**/
	var name : String;
};