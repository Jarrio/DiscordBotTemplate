package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/slash-commands#interaction-object
**/
typedef APIBaseInteraction<Type, Data> = {
	/**
		ID of the interaction
	**/
	var id : Dynamic;
	/**
		ID of the application this interaction is for
	**/
	var application_id : Dynamic;
	/**
		The type of interaction
	**/
	var type : Type;
	/**
		The command data payload
	**/
	@:optional
	var data : Data;
	/**
		The guild it was sent from
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The channel it was sent from
	**/
	@:optional
	var channel_id : Dynamic;
	/**
		Guild member data for the invoking user, including permissions
		
		**This is only sent when an interaction is invoked in a guild**
	**/
	@:optional
	var member : APIInteractionGuildMember;
	/**
		User object for the invoking user, if invoked in a DM
	**/
	@:optional
	var user : Dynamic;
	/**
		A continuation token for responding to the interaction
	**/
	var token : String;
	/**
		Read-only property, always `1`
	**/
	var version : Int;
	/**
		For components, the message they were attached to
	**/
	@:optional
	var message : Dynamic;
};