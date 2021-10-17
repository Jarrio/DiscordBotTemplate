package discord_api_types;

/**
	https://discord.com/developers/docs/resources/user#connection-object
**/
typedef APIConnection = {
	/**
		ID of the connection account
	**/
	var id : String;
	/**
		The username of the connection account
	**/
	var name : String;
	/**
		The service of the connection
	**/
	var type : String;
	/**
		Whether the connection is revoked
	**/
	@:optional
	var revoked : Bool;
	/**
		An array of partial server integrations
		
		See https://discord.com/developers/docs/resources/guild#integration-object
	**/
	@:optional
	var integrations : Array<Dynamic>;
	/**
		Whether the connection is verified
	**/
	var verified : Bool;
	/**
		Whether friend sync is enabled for this connection
	**/
	var friend_sync : Bool;
	/**
		Whether activities related to this connection will be shown in presence updates
	**/
	var show_activity : Bool;
	/**
		Visibility of this connection
		
		See https://discord.com/developers/docs/resources/user#connection-object-visibility-types
	**/
	var visibility : ConnectionVisibility;
};