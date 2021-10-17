package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#resume
**/
typedef GatewayResumeData = {
	/**
		Session token
	**/
	var token : String;
	/**
		Session id
	**/
	var session_id : String;
	/**
		Last sequence number received
	**/
	var seq : Float;
};