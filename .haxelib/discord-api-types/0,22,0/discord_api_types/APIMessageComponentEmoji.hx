package discord_api_types;

typedef APIMessageComponentEmoji = {
	/**
		Emoji id
	**/
	@:optional
	var id : Dynamic;
	/**
		Emoji name
	**/
	@:optional
	var name : String;
	/**
		Whether this emoji is animated
	**/
	@:optional
	var animated : Bool;
};