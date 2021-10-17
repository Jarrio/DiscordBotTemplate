package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#thread-members-update-thread-members-update-event-fields
**/
typedef GatewayThreadMembersUpdate = {
	/**
		The id of the thread for which members are being synced
	**/
	var id : Dynamic;
	/**
		The id of the guild that the thread is in
	**/
	var guild_id : Dynamic;
	/**
		The approximate member count of the thread, does not count above 50 even if there are more members
	**/
	var member_count : Float;
	/**
		The members that were added to the thread
	**/
	@:optional
	var added_members : Array<Dynamic>;
	/**
		The ids of the members that were removed from the thread
	**/
	@:optional
	var removed_member_ids : Array<Dynamic>;
};