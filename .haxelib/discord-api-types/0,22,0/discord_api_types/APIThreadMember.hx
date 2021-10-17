package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#thread-member-object-thread-member-structure
**/
typedef APIThreadMember = {
	/**
		The id of the thread
		
		**This field is omitted on the member sent within each thread in the `GUILD_CREATE` event**
	**/
	@:optional
	var id : Dynamic;
	/**
		The id of the member
		
		**This field is omitted on the member sent within each thread in the `GUILD_CREATE` event**
	**/
	@:optional
	var user_id : Dynamic;
	/**
		An ISO8601 timestamp for when the member last joined
	**/
	var join_timestamp : String;
	/**
		Member flags combined as a bitfield
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	var flags : ThreadMemberFlags;
};