package discord_api_types;

/**
	https://discord.com/developers/docs/resources/template#create-guild-from-template
**/
typedef RESTPostAPITemplateCreateGuildJSONBody = {
	/**
		Name of the guild (2-100 characters)
	**/
	var name : String;
	/**
		base64 1024x1024 png/jpeg image for the guild icon
		
		See https://discord.com/developers/docs/reference#image-data
	**/
	@:optional
	var icon : String;
};