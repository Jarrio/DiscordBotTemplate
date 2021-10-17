package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#activity-object-activity-types
**/
@:enum extern abstract ActivityType(Int) from Int to Int {
	/**
		Playing {game}
	**/
	var Game = 0;
	/**
		Streaming {details}
	**/
	var Streaming = 1;
	/**
		Listening to {name}
	**/
	var Listening = 2;
	/**
		Watching {details}
	**/
	var Watching = 3;
	/**
		{emoji} {details}
	**/
	var Custom = 4;
	/**
		Competing in {name}
	**/
	var Competing = 5;
}