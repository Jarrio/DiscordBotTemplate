package discord_api_types;

/**
	https://discord.com/developers/docs/resources/invite#invite-stage-instance-object-invite-stage-instance-structure
**/
typedef APIInviteStageInstance = {
	/**
		The topic of the stage instance (1-120 characters)
	**/
	var topic : String;
	/**
		The number of users in the stage
	**/
	var participant_count : Float;
	/**
		The number of users speaking in the stage
	**/
	var speaker_count : Float;
	/**
		The members speaking in the stage
		
		See https://discord.com/developers/docs/resources/guild#guild-member-object-guild-member-structure
	**/
	var members : Array<Dynamic>;
};