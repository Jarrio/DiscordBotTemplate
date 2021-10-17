package discord_api_types;

/**
	https://discord.com/developers/docs/resources/audit-log#audit-log-entry-object-audit-log-entry-structure
**/
typedef APIAuditLogEntry = {
	/**
		ID of the affected entity (webhook, user, role, etc.)
	**/
	var target_id : Null<String>;
	/**
		Changes made to the `target_id`
		
		See https://discord.com/developers/docs/resources/audit-log#audit-log-change-object
	**/
	@:optional
	var changes : Array<APIAuditLogChange>;
	/**
		The user who made the changes
		
		This can be `null` in some cases (webhooks deleting themselves by using their own token, for example)
	**/
	var user_id : Dynamic;
	/**
		ID of the entry
	**/
	var id : Dynamic;
	/**
		Type of action that occurred
		
		See https://discord.com/developers/docs/resources/audit-log#audit-log-entry-object-audit-log-events
	**/
	var action_type : AuditLogEvent;
	/**
		Additional info for certain action types
		
		See https://discord.com/developers/docs/resources/audit-log#audit-log-entry-object-optional-audit-entry-info
	**/
	@:optional
	var options : APIAuditLogOptions;
	/**
		The reason for the change (0-512 characters)
	**/
	@:optional
	var reason : String;
};