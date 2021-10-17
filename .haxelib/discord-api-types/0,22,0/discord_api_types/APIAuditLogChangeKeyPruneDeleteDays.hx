package discord_api_types;

/**
	Returned when there is a change in number of days after which inactive and role-unassigned members are kicked
**/
typedef APIAuditLogChangeKeyPruneDeleteDays = AuditLogChangeData<String, Float>;