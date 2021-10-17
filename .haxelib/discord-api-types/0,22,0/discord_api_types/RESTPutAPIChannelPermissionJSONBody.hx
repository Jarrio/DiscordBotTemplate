package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#edit-channel-permissions
**/
typedef RESTPutAPIChannelPermissionJSONBody = {
	/**
		The bitwise value of all allowed permissions
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	var allow : js.html.Permissions;
	/**
		The bitwise value of all disallowed permissions
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	var deny : js.html.Permissions;
	/**
		`0` for a role or `1` for a member
	**/
	var type : Dynamic;
};