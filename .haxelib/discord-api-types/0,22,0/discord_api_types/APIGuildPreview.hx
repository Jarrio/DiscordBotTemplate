package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-preview-object
**/
typedef APIGuildPreview = {
	/**
		Guild id
	**/
	var id : Dynamic;
	/**
		Guild name (2-100 characters)
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
		Discovery splash hash; only present for guilds with the "DISCOVERABLE" feature
		
		See https://discord.com/developers/docs/reference#image-formatting
	**/
	var discovery_splash : Null<String>;
	/**
		Custom guild emojis
		
		See https://discord.com/developers/docs/resources/emoji#emoji-object
	**/
	var emojis : Array<Dynamic>;
	/**
		Enabled guild features
		
		See https://discord.com/developers/docs/resources/guild#guild-object-guild-features
	**/
	var features : Array<GuildFeature>;
	/**
		Approximate number of members in this guild
	**/
	var approximate_member_count : Float;
	/**
		Approximate number of online members in this guild
	**/
	var approximate_presence_count : Float;
	/**
		The description for the guild
	**/
	var description : String;
};