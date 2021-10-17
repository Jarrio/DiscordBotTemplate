package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-thumbnail-structure
**/
typedef APIEmbedThumbnail = {
	/**
		Source url of thumbnail (only supports http(s) and attachments)
	**/
	@:optional
	var url : String;
	/**
		A proxied url of the thumbnail
	**/
	@:optional
	var proxy_url : String;
	/**
		Height of thumbnail
	**/
	@:optional
	var height : Float;
	/**
		Width of thumbnail
	**/
	@:optional
	var width : Float;
};