package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#identify
**/
typedef GatewayIdentifyData = {
	/**
		Authentication token
	**/
	var token : String;
	/**
		Connection properties
		
		See https://discord.com/developers/docs/topics/gateway#identify-identify-connection-properties
	**/
	var properties : GatewayIdentifyProperties;
	/**
		Whether this connection supports compression of packets
	**/
	@:optional
	var compress : Bool;
	/**
		Value between 50 and 250, total number of members where the gateway will stop sending
		offline members in the guild member list
	**/
	@:optional
	var large_threshold : Float;
	/**
		Used for Guild Sharding
		
		See https://discord.com/developers/docs/topics/gateway#sharding
	**/
	@:optional
	var shard : ts.Tuple4<Dynamic, Float, Dynamic, Float>;
	/**
		Presence structure for initial presence information
		
		See https://discord.com/developers/docs/topics/gateway#update-presence
	**/
	@:optional
	var presence : GatewayPresenceUpdateData;
	/**
		The Gateway Intents you wish to receive
		
		See https://discord.com/developers/docs/topics/gateway#gateway-intents
	**/
	var intents : Float;
};