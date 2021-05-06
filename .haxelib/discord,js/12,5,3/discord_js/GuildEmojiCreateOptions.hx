package discord_js;

typedef GuildEmojiCreateOptions = {
	@:optional
	var roles : ts.AnyOf2<Collection<String, Role>, Array<RoleResolvable>>;
	@:optional
	var reason : String;
};