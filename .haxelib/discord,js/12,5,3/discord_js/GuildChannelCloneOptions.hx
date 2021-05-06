package discord_js;

typedef GuildChannelCloneOptions = {
	@:optional
	var name : String;
	@:optional
	var permissionOverwrites : ts.AnyOf2<Collection<String, OverwriteResolvable>, Array<OverwriteResolvable>>;
	@:optional
	var topic : String;
	@:optional
	var type : ts.AnyOf2<Int, String>;
	@:optional
	var nsfw : Bool;
	@:optional
	var parent : ChannelResolvable;
	@:optional
	var bitrate : Float;
	@:optional
	var userLimit : Float;
	@:optional
	var rateLimitPerUser : Float;
	@:optional
	var position : Float;
	@:optional
	var reason : String;
};