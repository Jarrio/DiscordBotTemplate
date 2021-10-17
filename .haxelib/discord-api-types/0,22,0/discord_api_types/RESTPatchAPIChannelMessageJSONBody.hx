package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#edit-message
**/
typedef RESTPatchAPIChannelMessageJSONBody = {
	/**
		The new message contents (up to 2000 characters)
	**/
	@:optional
	var content : String;
	/**
		Embedded `rich` content (up to 6000 characters)
		
		See https://discord.com/developers/docs/resources/channel#embed-object
	**/
	@:optional
	var embeds : Array<Dynamic>;
	/**
		Embedded `rich` content
		
		See https://discord.com/developers/docs/resources/channel#embed-object
	**/
	@:optional
	var embed : Dynamic;
	/**
		Edit the flags of a message (only `SUPPRESS_EMBEDS` can currently be set/unset)
		
		When specifying flags, ensure to include all previously set flags/bits
		in addition to ones that you are modifying
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-flags
	**/
	@:optional
	var flags : Dynamic;
	/**
		Allowed mentions for the message
		
		See https://discord.com/developers/docs/resources/channel#allowed-mentions-object
	**/
	@:optional
	var allowed_mentions : Dynamic;
	/**
		Attached files to keep
		
		See https://discord.com/developers/docs/resources/channel#attachment-object
	**/
	@:optional
	var attachments : Array<Dynamic>;
	/**
		The components to include with the message
		
		See https://discord.com/developers/docs/interactions/message-components#component-object
	**/
	@:optional
	var components : Array<Dynamic>;
};