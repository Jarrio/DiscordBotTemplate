package discord_js;

typedef WebhookEditData = {
	@:optional
	var name : String;
	@:optional
	var avatar : Dynamic;
	@:optional
	var channel : ChannelResolvable;
	@:optional
	var reason : String;
};