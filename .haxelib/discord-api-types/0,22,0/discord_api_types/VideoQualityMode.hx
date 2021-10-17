package discord_api_types;

@:enum extern abstract VideoQualityMode(Int) from Int to Int {
	/**
		Discord chooses the quality for optimal performance
	**/
	var Auto = 1;
	/**
		720p
	**/
	var Full = 2;
}