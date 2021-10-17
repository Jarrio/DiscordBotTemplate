package discord_api_types;

/**
	Returned when a channel's amount of seconds a user has to wait before sending another message
	is changed
**/
typedef APIAuditLogChangeKeyRateLimitPerUser = AuditLogChangeData<String, Float>;