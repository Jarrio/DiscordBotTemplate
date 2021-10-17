package discord_api_types;

/**
	https://discord.com/developers/docs/topics/teams#data-models-team-object
**/
typedef APITeam = {
	/**
		A hash of the image of the team's icon
	**/
	var icon : Null<String>;
	/**
		The unique id of the team
	**/
	var id : Dynamic;
	/**
		The members of the team
	**/
	var members : Array<APITeamMember>;
	/**
		The name of the team
	**/
	var name : String;
	/**
		The user id of the current team owner
	**/
	var owner_user_id : Dynamic;
};