package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#create-guild-channel
**/
typedef RESTPostAPIGuildChannelJSONBody = {
	var name : String;
	@:optional
	var type : Dynamic;
	@:optional
	var topic : Dynamic;
	@:optional
	var bitrate : Dynamic;
	@:optional
	var permission_overwrites : Array<APIGuildCreateOverwrite>;
	@:optional
	var nsfw : Dynamic;
	@:optional
	var rate_limit_per_user : Dynamic;
	@:optional
	var user_limit : Dynamic;
	@:optional
	var parent_id : ts.AnyOf2<String, Float>;
};