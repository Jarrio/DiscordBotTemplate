package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#overwrite-object-overwrite-structure
**/
typedef APIOverwrite = {
	/**
		Role or user id
	**/
	var id : Dynamic;
	/**
		Either 0 (role) or 1 (member)
		
		{@link OverwriteType}
	**/
	var type : OverwriteType;
	/**
		Permission bit set
		
		See https://discord.com/developers/docs/topics/permissions#permissions-bitwise-permission-flags
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	var allow : js.html.Permissions;
	/**
		Permission bit set
		
		See https://discord.com/developers/docs/topics/permissions#permissions-bitwise-permission-flags
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	var deny : js.html.Permissions;
};