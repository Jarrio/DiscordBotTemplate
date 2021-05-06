package discord_js;

typedef GuildEmojiEditData = {
	@:optional
	var name : String;
	@:optional
	var roles : ts.AnyOf2<Collection<String, Role>, Array<RoleResolvable>>;
};