package discord_api_types;

/**
	https://discord.com/developers/docs/interactions/message-components#select-menus
**/
typedef APISelectMenuComponent = {
	/**
		A developer-defined identifier for the select menu, max 100 characters
	**/
	var custom_id : String;
	/**
		The choices in the select, max 25
	**/
	var options : Array<APISelectMenuOption>;
	/**
		Custom placeholder text if nothing is selected, max 100 characters
	**/
	@:optional
	var placeholder : String;
	/**
		The minimum number of items that must be chosen; min 0, max 25
	**/
	@:optional
	var min_values : Float;
	/**
		The maximum number of items that can be chosen; max 25
	**/
	@:optional
	var max_values : Float;
	/**
		Disable the select
	**/
	@:optional
	var disabled : Bool;
	/**
		The type of the component
	**/
	var type : Int;
};