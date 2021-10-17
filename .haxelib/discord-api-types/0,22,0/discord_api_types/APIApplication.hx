package discord_api_types;

/**
	https://discord.com/developers/docs/resources/application#application-object
**/
typedef APIApplication = {
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
	**/
	var icon : Null<String>;
	/**
		The description of the app
	**/
	var description : String;
	/**
		An array of rpc origin urls, if rpc is enabled
	**/
	@:optional
	var rpc_origins : Array<String>;
	/**
		When `false` only app owner can join the app's bot to guilds
	**/
	var bot_public : Bool;
	/**
		When `true` the app's bot will only join upon completion of the full oauth2 code grant flow
	**/
	var bot_require_code_grant : Bool;
	/**
		The url of the application's terms of service
	**/
	@:optional
	var terms_of_service_url : String;
	/**
		The url of the application's privacy policy
	**/
	@:optional
	var privacy_policy_url : String;
	/**
		Partial user object containing info on the owner of the application
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var owner : Dynamic;
	/**
		If this application is a game sold on Discord, this field will be the summary field for the store page
		of its primary sku
	**/
	var summary : String;
	/**
		The hexadecimal encoded key for verification in interactions and the GameSDK's GetTicket function
		
		See https://discord.com/developers/docs/game-sdk/applications#get-ticket
	**/
	var verify_key : String;
	/**
		The team this application belongs to
		
		See https://discord.com/developers/docs/topics/teams#data-models-team-object
	**/
	var team : Dynamic;
	/**
		If this application is a game sold on Discord, this field will be the guild to which it has been linked
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		If this application is a game sold on Discord, this field will be the id of the "Game SKU" that is created, if exists
	**/
	@:optional
	var primary_sku_id : Dynamic;
	/**
		If this application is a game sold on Discord, this field will be the URL slug that links to the store page
	**/
	@:optional
	var slug : String;
	/**
		If this application is a game sold on Discord, this field will be the hash of the image on store embeds
	**/
	@:optional
	var cover_image : String;
	/**
		The application's public flags
		
		See https://discord.com/developers/docs/resources/application#application-object-application-flags
	**/
	var flags : ApplicationFlags;
};