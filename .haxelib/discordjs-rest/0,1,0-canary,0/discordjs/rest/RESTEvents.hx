package discordjs.rest;

/**
	The events that the REST manager emits
**/
@:enum extern abstract RESTEvents(String) from String to String {
	var Debug = "restDebug";
	var RateLimited = "rateLimited";
}