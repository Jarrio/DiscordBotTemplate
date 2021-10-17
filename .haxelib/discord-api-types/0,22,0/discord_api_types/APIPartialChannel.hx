package discord_api_types;

/**
	Not documented, but partial only includes id, name, and type
**/
typedef APIPartialChannel = {
	/**
		The id of the channel
	**/
	var id : Dynamic;
	/**
		The type of the channel
		
		See https://discord.com/developers/docs/resources/channel#channel-object-channel-types
	**/
	var type : ChannelType;
	/**
		The name of the channel (2-100 characters)
	**/
	@:optional
	var name : String;
};