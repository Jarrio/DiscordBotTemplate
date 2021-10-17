package discord_api_types;

/**
	https://discord.com/developers/docs/resources/emoji#emoji-object-emoji-structure
**/
typedef APIEmoji = {
	/**
		Roles this emoji is whitelisted to
	**/
	@:optional
	var roles : Array<Dynamic>;
	/**
		User that created this emoji
	**/
	@:optional
	var user : Dynamic;
	/**
		Whether this emoji must be wrapped in colons
	**/
	@:optional
	var require_colons : Bool;
	/**
		Whether this emoji is managed
	**/
	@:optional
	var managed : Bool;
	/**
		Whether this emoji can be used, may be false due to loss of Server Boosts
	**/
	@:optional
	var available : Bool;
	/**
		Emoji id
	**/
	var id : Dynamic;
	/**
		Emoji name (can be null only in reaction emoji objects)
	**/
	var name : Null<String>;
	/**
		Whether this emoji is animated
	**/
	@:optional
	var animated : Bool;
};