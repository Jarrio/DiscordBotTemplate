package discord_api_types;

/**
	https://discord.com/developers/docs/resources/voice#voice-region-object
**/
typedef APIVoiceRegion = {
	/**
		Unique ID for the region
	**/
	var id : String;
	/**
		Name of the region
	**/
	var name : String;
	/**
		`true` if this is a vip-only server
	**/
	var vip : Bool;
	/**
		`true` for a single server that is closest to the current user's client
	**/
	var optimal : Bool;
	/**
		Whether this is a deprecated voice region (avoid switching to these)
	**/
	var deprecated : Bool;
	/**
		Whether this is a custom voice region (used for events/etc)
	**/
	var custom : Bool;
};