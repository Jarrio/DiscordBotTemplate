package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#modify-current-user-nick
**/
typedef RESTPatchAPICurrentGuildMemberNicknameResult = {
	/**
		Value to set users nickname to
		
		Requires `CHANGE_NICKNAME` permission
	**/
	var nick : Null<String>;
};