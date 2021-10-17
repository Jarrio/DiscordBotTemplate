package discord_api_types;

/**
	https://discord.com/developers/docs/resources/sticker#sticker-object-sticker-types
**/
@:enum extern abstract StickerType(Int) from Int to Int {
	/**
		An official sticker in a pack, part of Nitro or in a removed purchasable pack
	**/
	var Standard = 1;
	/**
		A sticker uploaded to a Boosted guild for the guild's members
	**/
	var Guild = 2;
}