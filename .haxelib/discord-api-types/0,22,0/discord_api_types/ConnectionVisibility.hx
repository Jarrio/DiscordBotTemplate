package discord_api_types;

@:enum extern abstract ConnectionVisibility(Int) from Int to Int {
	/**
		Invisible to everyone except the user themselves
	**/
	var None = 0;
	/**
		Visible to everyone
	**/
	var Everyone = 1;
}