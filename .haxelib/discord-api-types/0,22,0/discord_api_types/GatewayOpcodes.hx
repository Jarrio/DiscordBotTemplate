package discord_api_types;

/**
	https://discord.com/developers/docs/topics/opcodes-and-status-codes#gateway-gateway-opcodes
**/
@:enum extern abstract GatewayOpcodes(Int) from Int to Int {
	/**
		An event was dispatched
	**/
	var Dispatch = 0;
	/**
		A bidirectional opcode to maintain an active gateway connection.
		Fired periodically by the client, or fired by the gateway to request an immediate heartbeat from the client.
	**/
	var Heartbeat = 1;
	/**
		Starts a new session during the initial handshake
	**/
	var Identify = 2;
	/**
		Update the client's presence
	**/
	var PresenceUpdate = 3;
	/**
		Used to join/leave or move between voice channels
	**/
	var VoiceStateUpdate = 4;
	/**
		Resume a previous session that was disconnected
	**/
	var Resume = 6;
	/**
		You should attempt to reconnect and resume immediately
	**/
	var Reconnect = 7;
	/**
		Request information about offline guild members in a large guild
	**/
	var RequestGuildMembers = 8;
	/**
		The session has been invalidated. You should reconnect and identify/resume accordingly
	**/
	var InvalidSession = 9;
	/**
		Sent immediately after connecting, contains the `heartbeat_interval` to use
	**/
	var Hello = 10;
	/**
		Sent in response to receiving a heartbeat to acknowledge that it has been received
	**/
	var HeartbeatAck = 11;
}