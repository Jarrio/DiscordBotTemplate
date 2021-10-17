package discord_api_types;

@:enum extern abstract PresenceUpdateStatus(String) from String to String {
	var Online = "online";
	var DoNotDisturb = "dnd";
	var Idle = "idle";
	/**
		Invisible and shown as offline
	**/
	var Invisible = "invisible";
	var Offline = "offline";
}