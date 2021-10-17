package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#reaction-object-reaction-structure
**/
typedef APIReaction = {
	/**
		Times this emoji has been used to react
	**/
	var count : Float;
	/**
		Whether the current user reacted using this emoji
	**/
	var me : Bool;
	/**
		Emoji information
		
		See https://discord.com/developers/docs/resources/emoji#emoji-object
	**/
	var emoji : Dynamic;
};