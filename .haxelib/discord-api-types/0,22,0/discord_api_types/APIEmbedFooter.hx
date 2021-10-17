package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-footer-structure
**/
typedef APIEmbedFooter = {
	/**
		Footer text
		
		Length limit: 2048 characters
	**/
	var text : String;
	/**
		URL of footer icon (only supports http(s) and attachments)
	**/
	@:optional
	var icon_url : String;
	/**
		A proxied url of footer icon
	**/
	@:optional
	var proxy_icon_url : String;
};