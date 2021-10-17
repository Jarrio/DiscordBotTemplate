package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#ready
**/
typedef GatewayReadyDispatchData = {
	/**
		Gateway version
		
		See https://discord.com/developers/docs/topics/gateway#gateways-gateway-versions
	**/
	var v : Float;
	/**
		Information about the user including email
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var user : Dynamic;
	/**
		The guilds the user is in
		
		See https://discord.com/developers/docs/resources/guild#unavailable-guild-object
	**/
	var guilds : Array<Dynamic>;
	/**
		Used for resuming connections
	**/
	var session_id : String;
	/**
		The shard information associated with this session, if sent when identifying
		
		See https://discord.com/developers/docs/topics/gateway#sharding
	**/
	@:optional
	var shard : ts.Tuple4<Dynamic, Float, Dynamic, Float>;
	/**
		Contains `id` and `flags`
		
		See https://discord.com/developers/docs/resources/application#application-object
	**/
	var application : {
		var id : Dynamic;
		var flags : Dynamic;
	};
};