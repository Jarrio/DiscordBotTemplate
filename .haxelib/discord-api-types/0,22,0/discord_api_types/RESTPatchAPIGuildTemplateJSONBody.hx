package discord_api_types;

/**
	https://discord.com/developers/docs/resources/template#modify-guild-template
**/
typedef RESTPatchAPIGuildTemplateJSONBody = {
	/**
		Name of the template (1-100 characters)
	**/
	@:optional
	var name : String;
	/**
		Description for the template (0-120 characters)
	**/
	@:optional
	var description : String;
};