package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-field-structure
**/
typedef APIEmbedField = {
	/**
		Name of the field
		
		Length limit: 256 characters
	**/
	var name : String;
	/**
		Value of the field
		
		Length limit: 1024 characters
	**/
	var value : String;
	/**
		Whether or not this field should display inline
	**/
	@:optional
	@:native("inline")
	var inline_ : Bool;
};