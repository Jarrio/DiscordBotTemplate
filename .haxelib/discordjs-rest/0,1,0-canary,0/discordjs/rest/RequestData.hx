package discordjs.rest;

/**
	Represents possible data to be given to an endpoint
**/
typedef RequestData = {
	/**
		Files to be attached to this request
	**/
	@:optional
	var attachments : Array<RawAttachment>;
	/**
		If this request needs the `Authorization` header
	**/
	@:optional
	var auth : Bool;
	/**
		The authorization prefix to use for this request, useful if you use this with bearer tokens
	**/
	@:optional
	var authPrefix : String;
	/**
		The body to send to this request
	**/
	@:optional
	var body : Any;
	/**
		Additional headers to add to this request
	**/
	@:optional
	var headers : { };
	/**
		Query string parameters to append to the called endpoint
	**/
	@:optional
	var query : js.html.URLSearchParams;
	/**
		Reason to show in the audit logs
	**/
	@:optional
	var reason : String;
	/**
		If this request should be versioned
	**/
	@:optional
	var versioned : Bool;
};