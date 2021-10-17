package discord_api_types;

typedef RESTPostAPIGuildStickerFormDataBody = {
	/**
		Name of the sticker (2-30 characters)
	**/
	var name : String;
	/**
		Description of the sticker (empty or 2-100 characters)
	**/
	var description : String;
	/**
		The Discord name of a unicode emoji representing the sticker's expression (2-200 characters)
	**/
	var tags : String;
	/**
		The sticker file to upload, must be a PNG, APNG, or Lottie JSON file, max 500 KB
	**/
	var file : Any;
};