package discord_api_types;

/**
	Not documented but mentioned
**/
typedef APIPartialEmoji = {
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