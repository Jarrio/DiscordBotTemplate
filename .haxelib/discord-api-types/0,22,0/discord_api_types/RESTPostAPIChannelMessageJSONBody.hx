package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#create-message
**/
typedef RESTPostAPIChannelMessageJSONBody = {
	/**
		The message contents (up to 2000 characters)
	**/
	@:optional
	var content : String;
	/**
		A nonce that can be used for optimistic message sending
	**/
	@:optional
	var nonce : ts.AnyOf2<String, Float>;
	/**
		`true` if this is a TTS message
	**/
	@:optional
	var tts : Bool;
	/**
		Embedded `rich` content (up to 6000 characters)
		
		See https://discord.com/developers/docs/resources/channel#embed-object
	**/
	@:optional
	var embeds : Array<Dynamic>;
	/**
		Embedded `rich` content
		
		See https://discord.com/developers/docs/resources/channel#embed-object
	**/
	@:optional
	var embed : Dynamic;
	/**
		Allowed mentions for a message
		
		See https://discord.com/developers/docs/resources/channel#allowed-mentions-object
	**/
	@:optional
	var allowed_mentions : Dynamic;
	/**
		Include to make your message a reply
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-reference-structure
	**/
	@:optional
	var message_reference : Dynamic;
	/**
		The components to include with the message
		
		See https://discord.com/developers/docs/interactions/message-components#component-object
	**/
	@:optional
	var components : Array<Dynamic>;
	/**
		IDs of up to 3 stickers in the server to send in the message
		
		See https://discord.com/developers/docs/resources/sticker#sticker-object
	**/
	@:optional
	var sticker_ids : ts.AnyOf3<ts.Tuple1<Dynamic>, ts.Tuple2<Dynamic, Dynamic>, ts.Tuple3<Dynamic, Dynamic, Dynamic>>;
};