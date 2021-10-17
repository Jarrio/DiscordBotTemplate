package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-member-object
**/
typedef APIGuildMember = {
	/**
		The user this guild member represents
		
		**This field won't be included in the member object attached to `MESSAGE_CREATE` and `MESSAGE_UPDATE` gateway events.**
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var user : Dynamic;
	/**
		This users guild nickname
	**/
	@:optional
	var nick : String;
	/**
		Array of role object ids
		
		See https://discord.com/developers/docs/topics/permissions#role-object
	**/
	var roles : Array<Dynamic>;
	/**
		When the user joined the guild
	**/
	var joined_at : String;
	/**
		When the user started boosting the guild
		
		See https://support.discord.com/hc/en-us/articles/360028038352-Server-Boosting-
	**/
	@:optional
	var premium_since : String;
	/**
		Whether the user is deafened in voice channels
	**/
	var deaf : Bool;
	/**
		Whether the user is muted in voice channels
	**/
	var mute : Bool;
	/**
		Whether the user has not yet passed the guild's Membership Screening requirements
		
		*If this field is not present, it can be assumed as `false`.*
	**/
	@:optional
	var pending : Bool;
};