package discord_api_types;

/**
	https://discord.com/developers/docs/resources/audit-log#audit-log-object-audit-log-structure
**/
typedef APIAuditLog = {
	/**
		Webhooks found in the audit log
		
		See https://discord.com/developers/docs/resources/webhook#webhook-object
	**/
	var webhooks : Array<Dynamic>;
	/**
		Users found in the audit log
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var users : Array<Dynamic>;
	/**
		Audit log entries
		
		See https://discord.com/developers/docs/resources/audit-log#audit-log-entry-object
	**/
	var audit_log_entries : Array<APIAuditLogEntry>;
	/**
		Partial integration objects
		
		See https://discord.com/developers/docs/resources/guild#integration-object
	**/
	var integrations : Array<Dynamic>;
	/**
		Threads found in the audit log
		
		Threads referenced in THREAD_CREATE and THREAD_UPDATE events are included in the threads map, since archived threads might not be kept in memory by clients.
		
		See https://discord.com/developers/docs/resources/channel#channel-object
	**/
	var threads : Array<Dynamic>;
};