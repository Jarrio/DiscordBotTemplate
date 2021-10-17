package discord_api_types;

@:jsRequire("discord-api-types", "ActivityPlatform") @:enum extern abstract ActivityPlatform(String) from String to String {
	var Desktop;
	var Samsung;
	var Xbox;
}