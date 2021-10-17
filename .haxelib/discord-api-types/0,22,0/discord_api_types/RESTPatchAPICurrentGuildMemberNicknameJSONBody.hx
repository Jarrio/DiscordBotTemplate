package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#modify-current-user-nick
**/
typedef RESTPatchAPICurrentGuildMemberNicknameJSONBody = {
	/**
		Value to set users nickname to
		
		Requires `CHANGE_NICKNAME` permission
	**/
	@:optional
	var nick : String;
};