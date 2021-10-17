package discord_api_types;

typedef RESTGetAPIChannelThreadsArchivedQuery = {
	/**
		Get threads before this id or ISO8601 timestamp
	**/
	@:optional
	var before : Dynamic;
	/**
		Max number of thread to return
	**/
	@:optional
	var limit : Float;
};