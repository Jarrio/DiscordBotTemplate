package discord_js;

typedef InviteOptions = {
	@:optional
	var temporary : Bool;
	@:optional
	var maxAge : Float;
	@:optional
	var maxUses : Float;
	@:optional
	var unique : Bool;
	@:optional
	var reason : String;
};