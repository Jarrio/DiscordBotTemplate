package discord_api_types;

/**
	https://discord.com/developers/docs/resources/audit-log#audit-log-entry-object-optional-audit-entry-info
**/
typedef APIAuditLogOptions = {
	/**
		Number of days after which inactive members were kicked
		
		Present from:
		- MEMBER_PRUNE
	**/
	@:optional
	var delete_member_days : String;
	/**
		Number of members removed by the prune
		
		Present from:
		- MEMBER_PRUNE
	**/
	@:optional
	var members_removed : String;
	/**
		Channel in which the entities were targeted
		
		Present from:
		- MEMBER_MOVE
		- MESSAGE_PIN
		- MESSAGE_UNPIN
		- MESSAGE_DELETE
		- STAGE_INSTANCE_CREATE
		- STAGE_INSTANCE_UPDATE
		- STAGE_INSTANCE_DELETE
	**/
	@:optional
	var channel_id : Dynamic;
	/**
		ID of the message that was targeted
		
		Present from:
		- MESSAGE_PIN
		- MESSAGE_UNPIN
	**/
	@:optional
	var message_id : Dynamic;
	/**
		Number of entities that were targeted
		
		Present from:
		- MESSAGE_DELETE
		- MESSAGE_BULK_DELETE
		- MEMBER_DISCONNECT
		- MEMBER_MOVE
	**/
	@:optional
	var count : String;
	/**
		ID of the overwritten entity
		
		Present from:
		- CHANNEL_OVERWRITE_CREATE
		- CHANNEL_OVERWRITE_UPDATE
		- CHANNEL_OVERWRITE_DELETE
	**/
	@:optional
	var id : Dynamic;
	/**
		Type of overwritten entity - "0" for "role" or "1" for "member"
		
		Present from:
		- CHANNEL_OVERWRITE_CREATE
		- CHANNEL_OVERWRITE_UPDATE
		- CHANNEL_OVERWRITE_DELETE
		
		{@link AuditLogOptionsType}
	**/
	@:optional
	var type : AuditLogOptionsType;
	/**
		Name of the role
		
		Present from:
		- CHANNEL_OVERWRITE_CREATE
		- CHANNEL_OVERWRITE_UPDATE
		- CHANNEL_OVERWRITE_DELETE
		
		**Present only if the {@link APIAuditLogOptions#type entry type} is "0"**
	**/
	@:optional
	var role_name : String;
};