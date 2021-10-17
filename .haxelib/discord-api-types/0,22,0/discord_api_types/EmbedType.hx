package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-types
**/
@:enum extern abstract EmbedType(String) from String to String {
	/**
		Generic embed rendered from embed attributes
	**/
	var Rich = "rich";
	/**
		Image embed
	**/
	var Image = "image";
	/**
		Video embed
	**/
	var Video = "video";
	/**
		Animated gif image embed rendered as a video embed
	**/
	var GIFV = "gifv";
	/**
		Article embed
	**/
	var Article = "article";
	/**
		Link embed
	**/
	var Link = "link";
}