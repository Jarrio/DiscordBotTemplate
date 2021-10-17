package discord_api_types;

typedef APIButtonComponentWithCustomId = {
	/**
		The custom_id to be sent in the interaction when clicked
	**/
	var custom_id : String;
	/**
		The label to be displayed on the button
	**/
	@:optional
	var label : String;
	/**
		The style of the button
	**/
	var style : Int;
	/**
		The emoji to display to the left of the text
	**/
	@:optional
	var emoji : APIMessageComponentEmoji;
	/**
		The status of the button
	**/
	@:optional
	var disabled : Bool;
	/**
		The type of the component
	**/
	var type : Int;
};