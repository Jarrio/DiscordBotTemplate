package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#integration-application-object
**/
typedef APIGuildIntegrationApplication = {
	/**
		The id of the app
	**/
	var id : Dynamic;
	/**
		The name of the app
	**/
	var name : String;
	/**
		The icon hash of the app
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var icon : Null<String>;
	/**
		The description of the app
	**/
	var description : String;
	/**
		The summary of the app
	**/
	var summary : String;
	/**
		The bot associated with this application
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var bot : Dynamic;
};