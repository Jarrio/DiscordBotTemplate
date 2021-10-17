package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#invalid-session
**/
typedef GatewayInvalidSession = {
	/**
		Opcode for the payload
	**/
	var op : Int;
	/**
		Event data
	**/
	var d : Bool;
	/**
		Sequence number, used for resuming sessions and heartbeats
	**/
	var s : Float;
};