package discordjs.rest;

/**
	Options to be passed when creating the REST instance
**/
typedef RESTOptions = {
	/**
		The base api path, without version
	**/
	var api : String;
	/**
		The cdn path
	**/
	var cdn : String;
	/**
		The extra offset to add to rate limits in milliseconds
	**/
	var offset : Float;
	/**
		The number of retries for errors with the 500 code, or errors
		that timeout
	**/
	var retries : Float;
	/**
		The time to wait in milliseconds before a request is aborted
	**/
	var timeout : Float;
	/**
		Extra information to add to the user agent
	**/
	var userAgentAppendix : String;
	/**
		The version of the API to use
	**/
	var version : String;
};