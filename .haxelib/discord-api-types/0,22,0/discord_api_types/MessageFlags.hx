package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#message-object-message-flags
**/
@:enum extern abstract MessageFlags(Int) from Int to Int {
	/**
		This message has been published to subscribed channels (via Channel Following)
	**/
	var Crossposted = 1;
	/**
		This message originated from a message in another channel (via Channel Following)
	**/
	var IsCrosspost = 2;
	/**
		Do not include any embeds when serializing this message
	**/
	var SuppressEmbeds = 4;
	/**
		The source message for this crosspost has been deleted (via Channel Following)
	**/
	var SourceMessageDeleted = 8;
	/**
		This message came from the urgent message system
	**/
	var Urgent = 16;
	/**
		This message has an associated thread, which shares its id
	**/
	var HasThread = 32;
	/**
		This message is only visible to the user who invoked the Interaction
	**/
	var Ephemeral = 64;
	/**
		This message is an Interaction Response and the bot is "thinking"
	**/
	var Loading = 128;
}