package discordjs.rest;

/**
	Data emitted on `RESTEvents.Debug`
**/
typedef RatelimitData = {
	/**
		The time, in milliseconds, until the request-lock is reset
	**/
	var timeToReset : Float;
	/**
		The amount of requests we can perform before locking requests
	**/
	var limit : Float;
	/**
		The HTTP method being performed
	**/
	var method : String;
	/**
		The bucket hash for this request
	**/
	var hash : String;
	/**
		The route being hit in this request
	**/
	var route : String;
	/**
		The major parameter of the route
		
		For example, in `/channels/x`, this will be `x`.
		If there is no major parameter (e.g: `/bot/gateway`) this will be `global`.
	**/
	var majorParameter : String;
};