package discord_api_types;

typedef APIInteractionResponseDeferredChannelMessageWithSource = {
	var type : Int;
	@:optional
	var data : {
		@:optional
		var flags : Dynamic;
	};
};