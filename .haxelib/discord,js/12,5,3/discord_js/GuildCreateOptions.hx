package discord_js;

typedef GuildCreateOptions = {
	@:optional
	var afkChannelID : Float;
	@:optional
	var afkTimeout : Float;
	@:optional
	var channels : Array<PartialChannelData>;
	@:optional
	var defaultMessageNotifications : ts.AnyOf2<Float, String>;
	@:optional
	var explicitContentFilter : ts.AnyOf2<Float, String>;
	@:optional
	var icon : Dynamic;
	@:optional
	var region : String;
	@:optional
	var roles : Array<PartialRoleData>;
	@:optional
	var systemChannelID : Float;
	@:optional
	var verificationLevel : ts.AnyOf2<Float, String>;
};