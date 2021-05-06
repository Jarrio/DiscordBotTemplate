package discord_js;

typedef MessageOptions = {
	@:optional
	var tts : Bool;
	@:optional
	var nonce : String;
	@:optional
	var content : Dynamic;
	@:optional
	var embed : ts.AnyOf2<MessageEmbed, MessageEmbedOptions>;
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
	@:optional
	var reply : UserResolvable;
};