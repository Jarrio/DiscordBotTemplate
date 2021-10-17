package discord_api_types;

@:enum extern abstract OverwriteType(Int) from Int to Int {
	var Role = 0;
	var Member = 1;
}