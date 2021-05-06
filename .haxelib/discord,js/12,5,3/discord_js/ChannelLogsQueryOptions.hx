package discord_js;

typedef ChannelLogsQueryOptions = {
	@:optional
	var limit : Float;
	@:optional
	var before : String;
	@:optional
	var after : String;
	@:optional
	var around : String;
};