package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-guild-structure
**/
typedef APIPartialGuild = {
	/**
		Guild name (2-100 characters, excluding trailing and leading whitespace)
	**/
	var name : String;
	/**
		Icon hash
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var icon : Null<String>;
	/**
		Splash hash
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var splash : Null<String>;
	/**
		Banner hash
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	@:optional
	var banner : String;
	/**
		The description for the guild, if the guild is discoverable
	**/
	@:optional
	var description : String;
	/**
		Enabled guild features
		
		See https://discord.com/developers/docs/resources/guild#guild-object-guild-features
	**/
	@:optional
	var features : Array<GuildFeature>;
	/**
		Verification level required for the guild
		
		See https://discord.com/developers/docs/resources/guild#guild-object-verification-level
	**/
	@:optional
	var verification_level : GuildVerificationLevel;
	/**
		The vanity url code for the guild
	**/
	@:optional
	var vanity_url_code : String;
	/**
		`true` if this guild is unavailable due to an outage
	**/
	@:optional
	var unavailable : Bool;
	/**
		Guild id
	**/
	var id : Dynamic;
	/**
		The welcome screen of a Community guild, shown to new members
		
		Returned in the invite object
	**/
	@:optional
	var welcome_screen : APIGuildWelcomeScreen;
};