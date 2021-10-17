package discord_api_types;

/**
	https://discord.com/developers/docs/resources/sticker#sticker-object
**/
typedef APIStickerPack = {
	/**
		ID of the sticker pack
	**/
	var id : Dynamic;
	/**
		The stickers in the pack
	**/
	var stickers : Array<APISticker>;
	/**
		Name of the sticker pack
	**/
	var name : String;
	/**
		ID of the pack's SKU
	**/
	var sku_id : Dynamic;
	/**
		ID of a sticker in the pack which is shown as the pack's icon
	**/
	@:optional
	var cover_sticker_id : Dynamic;
	/**
		Description of the sticker pack
	**/
	var description : String;
	/**
		ID of the sticker pack's banner image
	**/
	var banner_asset_id : Dynamic;
};