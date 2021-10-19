package discord_builder.types;

import discord_js.FileOptions;
import discord_api_types.APIEmbed;
import discord_js.MessageEmbed;
import haxe.ds.Either;

typedef BaseMessageOptions = {
	//Whether or not the message should bo spoken aloud
	@:optional var tts:Bool;
	@:optional var nonce:String;
	@:optional var content:String;
	@:optional var embeds:Either<Array<MessageEmbed>,Array<APIEmbed>>;
	@:optional var files:Array<FileOptions>;
}