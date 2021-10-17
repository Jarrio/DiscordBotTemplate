package discord_api_types;

/**
	https://discord.com/developers/docs/resources/user#user-object
**/
typedef APIUser = {
	/**
		The user's id
	**/
	var id : Dynamic;
	/**
		The user's username, not unique across the platform
	**/
	var username : String;
	/**
		The user's 4-digit discord-tag
	**/
	var discriminator : String;
	/**
		The user's avatar hash
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var avatar : Null<String>;
	/**
		Whether the user belongs to an OAuth2 application
	**/
	@:optional
	var bot : Bool;
	/**
		Whether the user is an Official Discord System user (part of the urgent message system)
	**/
	@:optional
	var system : Bool;
	/**
		Whether the user has two factor enabled on their account
	**/
	@:optional
	var mfa_enabled : Bool;
	/**
		The user's chosen language option
	**/
	@:optional
	var locale : String;
	/**
		Whether the email on this account has been verified
	**/
	@:optional
	var verified : Bool;
	/**
		The user's email
	**/
	@:optional
	var email : String;
	/**
		The flags on a user's account
		
		See https://discord.com/developers/docs/resources/user#user-object-user-flags
	**/
	@:optional
	var flags : UserFlags;
	/**
		The type of Nitro subscription on a user's account
		
		See https://discord.com/developers/docs/resources/user#user-object-premium-types
	**/
	@:optional
	var premium_type : UserPremiumType;
	/**
		The public flags on a user's account
		
		See https://discord.com/developers/docs/resources/user#user-object-user-flags
	**/
	@:optional
	var public_flags : UserFlags;
};