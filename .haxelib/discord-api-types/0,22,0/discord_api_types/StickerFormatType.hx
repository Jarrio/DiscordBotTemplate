package discord_api_types;

/**
	https://discord.com/developers/docs/resources/sticker#sticker-object-sticker-format-types
**/
@:enum extern abstract StickerFormatType(Int) from Int to Int {
	var PNG = 1;
	var APNG = 2;
	var Lottie = 3;
}