package discord_js;

import discord_js.MessageReaction;

typedef ReactionCollectorOptions = {
	@:optional var filter:(reaction:MessageReaction, user:User) -> Bool;
	@:optional
	var max : Float;
	@:optional
	var maxEmojis : Float;
	@:optional
	var maxUsers : Float;
	@:optional
	var time : Float;
	@:optional
	var idle : Float;
	@:optional
	var dispose : Bool;
};