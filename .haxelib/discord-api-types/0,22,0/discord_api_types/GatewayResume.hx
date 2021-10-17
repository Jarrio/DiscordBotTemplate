package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#resume
**/
typedef GatewayResume = {
	var op : Int;
	var d : GatewayResumeData;
};