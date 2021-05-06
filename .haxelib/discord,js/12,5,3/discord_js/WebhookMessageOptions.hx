package discord_js;

typedef WebhookMessageOptions = {
	@:optional
	var username : String;
	@:optional
	var avatarURL : String;
	@:optional
	var tts : Bool;
	@:optional
	var nonce : String;
	@:optional
	var embeds : Array<ts.AnyOf2<Dynamic, MessageEmbed>>;
	@:optional
	var disableMentions : String;
	@:optional
	var allowedMentions : MessageMentionOptions;
	@:optional
	var files : Array<Dynamic>;
	@:optional
	var code : ts.AnyOf2<String, Bool>;
	@:optional
	var split : ts.AnyOf2<Bool, SplitOptions>;
};