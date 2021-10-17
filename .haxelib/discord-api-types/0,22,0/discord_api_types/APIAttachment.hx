package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#attachment-object-attachment-structure
**/
typedef APIAttachment = {
	/**
		Attachment id
	**/
	var id : Dynamic;
	/**
		Name of file attached
	**/
	var filename : String;
	/**
		The attachment's media type
		
		See https://en.wikipedia.org/wiki/Media_type
	**/
	@:optional
	var content_type : String;
	/**
		Size of file in bytes
	**/
	var size : Float;
	/**
		Source url of file
	**/
	var url : String;
	/**
		A proxied url of file
	**/
	var proxy_url : String;
	/**
		Height of file (if image)
	**/
	@:optional
	var height : Float;
	/**
		Width of file (if image)
	**/
	@:optional
	var width : Float;
};