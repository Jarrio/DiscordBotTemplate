package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#create-message
**/
typedef RESTPostAPIChannelMessageFormDataBody = ts.AnyOf2<{
	/**
		JSON stringified message body
	**/
	@:optional
	var payload_json : String;
	/**
		The file contents
	**/
	var file : Any;
}, RESTPostAPIChannelMessageJSONBody & {
	/**
		The file contents
	**/
	var file : Any;
}>;