package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/message-components#select-menu-object-select-option-structure
**/
typedef APISelectMenuOption = {
	/**
		The user-facing name of the option (max 25 chars)
	**/
	var label : String;
	/**
		The dev-defined value of the option (max 100 chars)
	**/
	var value : String;
	/**
		An additional description of the option (max 50 chars)
	**/
	@:optional
	var description : String;
	/**
		The emoji to display to the left of the option
	**/
	@:optional
	var emoji : APIMessageComponentEmoji;
	/**
		Whether this option should be already-selected by default
	**/
	@:optional
	@:native("default")
	var default_ : Bool;
};