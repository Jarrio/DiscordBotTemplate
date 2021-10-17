package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#modify-guild-role
**/
typedef RESTPatchAPIGuildRoleJSONBody = {
	/**
		Name of the role
	**/
	@:optional
	var name : String;
	/**
		Bitwise value of the enabled/disabled permissions
	**/
	@:optional
	var permissions : js.html.Permissions;
	/**
		RGB color value
	**/
	@:optional
	var color : Float;
	/**
		Whether the role should be displayed separately in the sidebar
	**/
	@:optional
	var hoist : Bool;
	/**
		Whether the role should be mentionable
	**/
	@:optional
	var mentionable : Bool;
};