package discordjs.rest;

/**
	Possible API methods to be used when doing requests
**/
@:enum extern abstract RequestMethod(String) from String to String {
	var Delete = "delete";
	var Get = "get";
	var Patch = "patch";
	var Post = "post";
	var Put = "put";
}