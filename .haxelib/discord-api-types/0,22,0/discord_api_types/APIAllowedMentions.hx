package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#allowed-mentions-object-allowed-mentions-structure
**/
typedef APIAllowedMentions = {
	/**
		An array of allowed mention types to parse from the content
		
		See https://discord.com/developers/docs/resources/channel#allowed-mentions-object-allowed-mention-types
	**/
	@:optional
	var parse : Array<AllowedMentionsTypes>;
	/**
		Array of role_ids to mention (Max size of 100)
	**/
	@:optional
	var roles : Array<Dynamic>;
	/**
		Array of user_ids to mention (Max size of 100)
	**/
	@:optional
	var users : Array<Dynamic>;
	/**
		For replies, whether to mention the author of the message being replied to (default false)
	**/
	@:optional
	var replied_user : Bool;
};