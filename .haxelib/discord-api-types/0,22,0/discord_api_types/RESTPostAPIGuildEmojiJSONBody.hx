package discord_api_types;

/**
	https://discord.com/developers/docs/resources/emoji#create-guild-emoji-json-params
**/
typedef RESTPostAPIGuildEmojiJSONBody = {
	/**
		Name of the emoji
	**/
	var name : String;
	/**
		The 128x128 emoji image
		
		https://discord.com/developers/docs/reference#image-data
	**/
	var image : String;
	/**
		Roles for which this emoji will be whitelisted
	**/
	@:optional
	var roles : Array<Dynamic>;
};