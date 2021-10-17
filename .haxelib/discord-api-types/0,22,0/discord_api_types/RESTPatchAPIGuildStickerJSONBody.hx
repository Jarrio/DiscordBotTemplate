package discord_api_types;

typedef RESTPatchAPIGuildStickerJSONBody = {
	/**
		Name of the sticker (2-30 characters)
	**/
	@:optional
	var name : String;
	/**
		Description of the sticker (2-100 characters)
	**/
	@:optional
	var description : String;
	/**
		The Discord name of a unicode emoji representing the sticker's expression (2-200 characters)
	**/
	@:optional
	var tags : String;
};