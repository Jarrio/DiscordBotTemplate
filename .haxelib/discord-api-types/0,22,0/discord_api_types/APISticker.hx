package discord_api_types;

/**
	https://discord.com/developers/docs/resources/sticker#sticker-object
**/
typedef APISticker = {
	/**
		ID of the sticker
	**/
	var id : Dynamic;
	/**
		For standard stickers, ID of the pack the sticker is from
	**/
	@:optional
	var pack_id : Dynamic;
	/**
		Name of the sticker
	**/
	var name : String;
	/**
		Description of the sticker
	**/
	var description : Null<String>;
	/**
		For guild stickers, the Discord name of a unicode emoji representing the sticker's expression. for standard stickers, a comma-separated list of related expressions.
	**/
	var tags : String;
	/**
		Previously the sticker asset hash, now an empty string
	**/
	var asset : String;
	/**
		Type of sticker
		
		See https://discord.com/developers/docs/resources/sticker#sticker-object-sticker-types
	**/
	var type : StickerType;
	/**
		Type of sticker format
		
		See https://discord.com/developers/docs/resources/sticker#sticker-object-sticker-format-types
	**/
	var format_type : StickerFormatType;
	/**
		Whether this guild sticker can be used, may be false due to loss of Server Boosts
	**/
	@:optional
	var available : Bool;
	/**
		ID of the guild that owns this sticker
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The user that uploaded the guild sticker
	**/
	@:optional
	var user : Dynamic;
	/**
		The standard sticker's sort order within its pack
	**/
	@:optional
	var sort_value : Float;
};