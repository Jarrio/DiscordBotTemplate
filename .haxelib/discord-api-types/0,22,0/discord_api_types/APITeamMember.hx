package discord_api_types;

/**
	https://discord.com/developers/docs/topics/teams#data-models-team-members-object
**/
typedef APITeamMember = {
	/**
		The user's membership state on the team
		
		See https://discord.com/developers/docs/topics/teams#data-models-membership-state-enum
	**/
	var membership_state : TeamMemberMembershipState;
	/**
		Will always be `["*"]`
	**/
	var permissions : ts.Tuple1<String>;
	/**
		The id of the parent team of which they are a member
	**/
	var team_id : Dynamic;
	/**
		The avatar, discriminator, id, and username of the user
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var user : Dynamic;
};