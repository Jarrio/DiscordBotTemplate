package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#client-status-object
**/
typedef GatewayPresenceClientStatus = {
	/**
		The user's status set for an active desktop (Windows, Linux, Mac) application session
	**/
	@:optional
	var desktop : PresenceUpdateStatus;
	/**
		The user's status set for an active mobile (iOS, Android) application session
	**/
	@:optional
	var mobile : PresenceUpdateStatus;
	/**
		The user's status set for an active web (browser, bot account) application session
	**/
	@:optional
	var web : PresenceUpdateStatus;
};