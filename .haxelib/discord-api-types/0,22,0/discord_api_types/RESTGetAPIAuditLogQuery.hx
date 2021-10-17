package discord_api_types;

/**
	https://discord.com/developers/docs/resources/audit-log#get-guild-audit-log
**/
typedef RESTGetAPIAuditLogQuery = {
	/**
		Filter the log for actions made by a user
	**/
	@:optional
	var user_id : Dynamic;
	/**
		The type of audit log events
	**/
	@:optional
	var action_type : Dynamic;
	/**
		Filter the log before a certain entry ID
	**/
	@:optional
	var before : Dynamic;
	/**
		How many entries are returned (default 50, minimum 1, maximum 100)
	**/
	@:optional
	var limit : Float;
};