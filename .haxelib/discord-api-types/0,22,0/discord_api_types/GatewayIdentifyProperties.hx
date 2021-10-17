package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#identify-identify-connection-properties
**/
typedef GatewayIdentifyProperties = {
	/**
		Your operating system
	**/
	@:native("$os")
	var DollarOs : String;
	/**
		Your library name
	**/
	@:native("$browser")
	var DollarBrowser : String;
	/**
		Your library name
	**/
	@:native("$device")
	var DollarDevice : String;
};