package discord_api_types;

/**
	https://discord.com/developers/docs/resources/sticker#sticker-item-object
**/
typedef APIStickerItem = {
	/**
		ID of the sticker
	**/
	var id : Dynamic;
	/**
		Name of the sticker
	**/
	var name : String;
	/**
		Type of sticker format
		
		See https://discord.com/developers/docs/resources/sticker#sticker-object-sticker-format-types
	**/
	var format_type : StickerFormatType;
};