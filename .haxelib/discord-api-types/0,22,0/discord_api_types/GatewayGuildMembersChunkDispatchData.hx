package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#guild-members-chunk
**/
typedef GatewayGuildMembersChunkDispatchData = {
	/**
		The id of the guild
	**/
	var guild_id : Dynamic;
	/**
		Set of guild members
		
		See https://discord.com/developers/docs/resources/guild#guild-member-object
	**/
	var members : Array<Dynamic>;
	/**
		The chunk index in the expected chunks for this response (`0 <= chunk_index < chunk_count`)
	**/
	@:optional
	var chunk_index : Float;
	/**
		The total number of expected chunks for this response
	**/
	@:optional
	var chunk_count : Float;
	/**
		If passing an invalid id to `REQUEST_GUILD_MEMBERS`, it will be returned here
	**/
	@:optional
	var not_found : Array<Any>;
	/**
		If passing true to `REQUEST_GUILD_MEMBERS`, presences of the returned members will be here
		
		See https://discord.com/developers/docs/topics/gateway#presence
	**/
	@:optional
	var presences : Array<Dynamic>;
	/**
		The nonce used in the Guild Members Request
		
		See https://discord.com/developers/docs/topics/gateway#request-guild-members
	**/
	@:optional
	var nonce : String;
};