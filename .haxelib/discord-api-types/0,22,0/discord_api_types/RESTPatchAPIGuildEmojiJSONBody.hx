package discord_api_types;

/**
	https://discord.com/developers/docs/resources/emoji#modify-guild-emoji
**/
typedef RESTPatchAPIGuildEmojiJSONBody = {
	/**
		Name of the emoji
	**/
	@:optional
	var name : String;
	/**
		Roles for which this emoji will be whitelisted
	**/
	@:optional
	var roles : Array<Dynamic>;
};