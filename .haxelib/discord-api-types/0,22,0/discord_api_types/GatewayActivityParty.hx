package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#activity-object-activity-party
**/
typedef GatewayActivityParty = {
	/**
		The id of the party
	**/
	@:optional
	var id : String;
	/**
		Used to show the party's current and maximum size
	**/
	@:optional
	var size : ts.Tuple4<Dynamic, Float, Dynamic, Float>;
};