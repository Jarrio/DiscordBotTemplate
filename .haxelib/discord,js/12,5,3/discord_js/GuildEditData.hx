package discord_js;

typedef GuildEditData = {
	@:optional
	var name : String;
	@:optional
	var region : String;
	@:optional
	var verificationLevel : ts.AnyOf2<Float, String>;
	@:optional
	var explicitContentFilter : ts.AnyOf2<Float, String>;
	@:optional
	var defaultMessageNotifications : ts.AnyOf2<Float, String>;
	@:optional
	var afkChannel : ChannelResolvable;
	@:optional
	var systemChannel : ChannelResolvable;
	@:optional
	var systemChannelFlags : BitFieldResolvable<SystemChannelFlagsString>;
	@:optional
	var afkTimeout : Float;
	@:optional
	var icon : Dynamic;
	@:optional
	var owner : UserResolvable;
	@:optional
	var splash : Dynamic;
	@:optional
	var discoverySplash : Dynamic;
	@:optional
	var banner : Dynamic;
	@:optional
	var rulesChannel : ChannelResolvable;
	@:optional
	var publicUpdatesChannel : ChannelResolvable;
	@:optional
	var preferredLocale : String;
};