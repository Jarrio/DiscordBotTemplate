package discordjs.rest;

typedef DiscordErrorData = {
	var code : Float;
	var message : String;
	@:optional
	var errors : DiscordError;
};