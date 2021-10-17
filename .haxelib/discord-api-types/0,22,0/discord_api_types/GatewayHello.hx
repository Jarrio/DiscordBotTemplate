package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#hello
**/
typedef GatewayHello = {
	/**
		Opcode for the payload
	**/
	var op : Int;
	/**
		Event data
	**/
	var d : GatewayHelloData;
	/**
		Sequence number, used for resuming sessions and heartbeats
	**/
	var s : Float;
};