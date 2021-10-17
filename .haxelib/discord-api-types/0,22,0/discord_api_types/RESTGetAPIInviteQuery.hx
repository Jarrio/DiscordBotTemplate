package discord_api_types;

/**
	https://discord.com/developers/docs/resources/invite#get-invite
**/
typedef RESTGetAPIInviteQuery = {
	/**
		Whether the invite should contain approximate member counts
	**/
	@:optional
	var with_counts : Bool;
	/**
		Whether the invite should contain the expiration date
	**/
	@:optional
	var with_expiration : Bool;
};