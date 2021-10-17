package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#message-object-message-activity-structure
**/
typedef APIMessageActivity = {
	/**
		Type of message activity
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-activity-types
	**/
	var type : MessageActivityType;
	/**
		`party_id` from a Rich Presence event
		
		See https://discord.com/developers/docs/rich-presence/how-to#updating-presence-update-presence-payload-fields
	**/
	@:optional
	var party_id : String;
};