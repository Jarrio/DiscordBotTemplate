package discord_js;

typedef ChannelData = {
	@:optional
	var name : String;
	@:optional
	var position : Float;
	@:optional
	var topic : String;
	@:optional
	var nsfw : Bool;
	@:optional
	var bitrate : Float;
	@:optional
	var userLimit : Float;
	@:optional
	var parentID : String;
	@:optional
	var rateLimitPerUser : Float;
	@:optional
	var lockPermissions : Bool;
	@:optional
	var permissionOverwrites : ts.AnyOf2<haxe.ds.ReadOnlyArray<OverwriteResolvable>, Collection<String, OverwriteResolvable>>;
};