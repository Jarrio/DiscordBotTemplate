package discord_api_types;

/**
	https://discord.com/developers/docs/topics/teams#data-models-membership-state-enum
**/
@:enum extern abstract TeamMemberMembershipState(Int) from Int to Int {
	var Invited = 1;
	var Accepted = 2;
}