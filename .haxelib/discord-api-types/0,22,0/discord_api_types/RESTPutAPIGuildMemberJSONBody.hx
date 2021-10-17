package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#add-guild-member
**/
typedef RESTPutAPIGuildMemberJSONBody = {
	/**
		An oauth2 access token granted with the `guilds.join` to the bot's application for the user you want to add to the guild
	**/
	var access_token : String;
	/**
		Value to set users nickname to
		
		Requires `MANAGE_NICKNAMES` permission
	**/
	@:optional
	var nick : String;
	/**
		Array of role ids the member is assigned
		
		Requires `MANAGE_ROLES` permission
	**/
	@:optional
	var roles : Array<Dynamic>;
	/**
		Whether the user is muted in voice channels
		
		Requires `MUTE_MEMBERS` permission
	**/
	@:optional
	var mute : Bool;
	/**
		Whether the user is deafened in voice channels
		
		Requires `DEAFEN_MEMBERS` permission
	**/
	@:optional
	var deaf : Bool;
};