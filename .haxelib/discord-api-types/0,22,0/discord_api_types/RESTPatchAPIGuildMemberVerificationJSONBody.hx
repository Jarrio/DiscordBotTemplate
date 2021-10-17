package discord_api_types;

typedef RESTPatchAPIGuildMemberVerificationJSONBody = {
	/**
		Whether Membership Screening is enabled
	**/
	@:optional
	var enabled : Bool;
	/**
		Array of field objects serialized in a string
	**/
	@:optional
	var form_fields : String;
	/**
		The server description to show in the screening form
	**/
	@:optional
	var description : String;
};