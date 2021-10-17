package discord_api_types;

typedef APIGuildMembershipScreeningField = {
	/**
		The type of field
	**/
	var field_type : String;
	/**
		The title of the field
	**/
	var label : String;
	/**
		The list of rules
	**/
	@:optional
	var values : Array<String>;
	/**
		Whether the user has to fill out this field
	**/
	var required : Bool;
};