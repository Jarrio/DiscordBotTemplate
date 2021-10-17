package discord_api_types;

/**
	https://discord.com/developers/docs/resources/template#template-object
**/
typedef APITemplate = {
	/**
		The template code (unique ID)
	**/
	var code : String;
	/**
		Template name
	**/
	var name : String;
	/**
		The description for the template
	**/
	var description : Null<String>;
	/**
		Number of times this template has been used
	**/
	var usage_count : Float;
	/**
		The ID of the user who created the template
	**/
	var creator_id : Dynamic;
	/**
		The user who created the template
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var creator : Dynamic;
	/**
		When this template was created
	**/
	var created_at : String;
	/**
		When this template was last synced to the source guild
	**/
	var updated_at : String;
	/**
		The ID of the guild this template is based on
	**/
	var source_guild_id : Dynamic;
	/**
		The guild snapshot this template contains
	**/
	var serialized_source_guild : APITemplateSerializedSourceGuild;
	/**
		Whether the template has unsynced changes
	**/
	var is_dirty : Null<Bool>;
};