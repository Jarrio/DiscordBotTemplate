package discord_js;

typedef ClientPresenceStatusData = {
	@:optional
	var web : ClientPresenceStatus;
	@:optional
	var mobile : ClientPresenceStatus;
	@:optional
	var desktop : ClientPresenceStatus;
};