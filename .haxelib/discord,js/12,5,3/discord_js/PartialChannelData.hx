package discord_js;

typedef PartialChannelData = {
	@:optional
	var id : Float;
	var name : String;
	@:optional
	var topic : String;
	@:optional
	var type : String;
	@:optional
	var parentID : Float;
	@:optional
	var permissionOverwrites : Array<{
		var id : ts.AnyOf2<String, Float>;
		@:optional
		var type : OverwriteType;
		@:optional
		var allow : BitFieldResolvable<PermissionString>;
		@:optional
		var deny : BitFieldResolvable<PermissionString>;
	}>;
};