package discord_api_types;

typedef GatewayActivityButton = {
	/**
		The text shown on the button (1-32 characters)
	**/
	var label : String;
	/**
		The url opened when clicking the button (1-512 characters)
	**/
	var url : String;
};