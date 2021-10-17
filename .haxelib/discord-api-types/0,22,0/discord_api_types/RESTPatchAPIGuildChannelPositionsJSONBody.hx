package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#modify-guild-channel-positions
**/
typedef RESTPatchAPIGuildChannelPositionsJSONBody = Array<{
	/**
		Channel id
	**/
	var id : Dynamic;
	/**
		Sorting position of the channel
	**/
	var position : Float;
	/**
		Sync channel overwrites with the new parent, when moving to a new `parent_id`
	**/
	@:optional
	var lock_permissions : Bool;
	/**
		The new parent id of this channel
	**/
	@:optional
	var parent_id : Dynamic;
}>;