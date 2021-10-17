package discordjs.rest;

/**
	Possible headers for an API call
**/
typedef RequestHeaders = {
	@:optional
	var Authorization : String;
	@:native("User-Agent")
	var User_Agent : String;
	@:optional
	@:native("X-Audit-Log-Reason")
	var X_Audit_Log_Reason : String;
};