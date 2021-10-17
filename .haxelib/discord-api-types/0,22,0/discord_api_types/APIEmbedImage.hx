package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-image-structure
**/
typedef APIEmbedImage = {
	/**
		Source url of image (only supports http(s) and attachments)
	**/
	@:optional
	var url : String;
	/**
		A proxied url of the image
	**/
	@:optional
	var proxy_url : String;
	/**
		Height of image
	**/
	@:optional
	var height : Float;
	/**
		Width of image
	**/
	@:optional
	var width : Float;
};