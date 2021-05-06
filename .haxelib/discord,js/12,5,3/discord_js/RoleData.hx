package discord_js;

typedef RoleData = {
	@:optional
	var name : String;
	@:optional
	var color : ColorResolvable;
	@:optional
	var hoist : Bool;
	@:optional
	var position : Float;
	@:optional
	var permissions : BitFieldResolvable<PermissionString>;
	@:optional
	var mentionable : Bool;
};