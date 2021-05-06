package discord_js;

typedef MessageMentionOptions = {
	@:optional
	var parse : Array<MessageMentionTypes>;
	@:optional
	var roles : Array<String>;
	@:optional
	var users : Array<String>;
};