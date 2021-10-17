package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#edit-message
**/
typedef RESTPatchAPIChannelMessageFormDataBody = ts.AnyOf2<{
	/**
		JSON stringified message body
	**/
	@:optional
	var payload_json : String;
	/**
		The file contents
	**/
	var file : Any;
}, RESTPatchAPIChannelMessageJSONBody & {
	/**
		The file contents
	**/
	var file : Any;
}>;