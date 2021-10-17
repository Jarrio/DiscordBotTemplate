package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-author-structure
**/
typedef APIEmbedAuthor = {
	/**
		Name of author
		
		Length limit: 256 characters
	**/
	@:optional
	var name : String;
	/**
		URL of author
	**/
	@:optional
	var url : String;
	/**
		URL of author icon (only supports http(s) and attachments)
	**/
	@:optional
	var icon_url : String;
	/**
		A proxied url of author icon
	**/
	@:optional
	var proxy_icon_url : String;
};