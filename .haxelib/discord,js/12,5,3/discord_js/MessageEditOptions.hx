package discord_js;

typedef MessageEditOptions = {
	@:optional
	var content : Dynamic;
	@:optional
	var embed : ts.AnyOf2<MessageEmbed, MessageEmbedOptions>;
	@:optional
	var code : ts.AnyOf2<String, Bool>;
	@:optional
	var flags : BitFieldResolvable<MessageFlagsString>;
	@:optional
	var allowedMentions : MessageMentionOptions;
};