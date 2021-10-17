package discord_api_types;

/**
	https://discord.com/developers/docs/topics/permissions#role-object
**/
typedef APIRole = {
	/**
		Role id
	**/
	var id : Dynamic;
	/**
		Role name
	**/
	var name : String;
	/**
		Integer representation of hexadecimal color code
	**/
	var color : Float;
	/**
		If this role is pinned in the user listing
	**/
	var hoist : Bool;
	/**
		Position of this role
	**/
	var position : Float;
	/**
		Permission bit set
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	var permissions : js.html.Permissions;
	/**
		Whether this role is managed by an integration
	**/
	var managed : Bool;
	/**
		Whether this role is mentionable
	**/
	var mentionable : Bool;
	/**
		The tags this role has
	**/
	@:optional
	var tags : APIRoleTags;
};