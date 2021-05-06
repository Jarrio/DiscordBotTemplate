package discord_js;

typedef WebSocketProperties = {
	@:optional
	@:native("$os")
	var DollarOs : String;
	@:optional
	@:native("$browser")
	var DollarBrowser : String;
	@:optional
	@:native("$device")
	var DollarDevice : String;
};