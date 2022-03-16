package discord_builder;

import discord_js.MessageAttachment;
import discord_js.FileOptions;
import discord_js.MessageMentionOptions;
import discord_api_types.APIEmbed;
import haxe.extern.EitherType;
import discord_js.MessageEmbed;
import discord_js.User;
import discord_js.Message;
import js.lib.Promise;
import discord_api_types.InteractionType;
import discord_api_types.Snowflake;

@:native
extern class BaseCommandInteraction extends Interaction {
	var ephemeral:Bool;
	var command:Dynamic;
	var commandId:Snowflake;
	var commandName:String;
	var deferred:Bool;
	var replied:Bool;
	var type:InteractionType;
	var options:CommandInteractions;
	
	function deferReply(options:InteractionDeferReplyOptions):Promise<Message>;
	function deleteReply():Promise<Void>;
	@:overload(function(options:String):Promise<Message> {})
	@:overload(function(options:InteractionReplyOptions):Promise<Message> {})
	function editReply():Promise<Message>;
	function fetchReply():Promise<Message>;
	function followUp(options:String):Promise<Message>;

	@:overload(function(options:String):Promise<Message> {})
	@:overload(function(options:InteractionReplyOptions):Promise<Message> {})
	function reply():Promise<Message>;
}

typedef CommandInteractions = {
	function getMentionable(id:String):Dynamic;
	function getRole(id:String):Dynamic;
	function getChannel(id:String):Dynamic;
	function getMember(id:String):Dynamic;
	function getBoolean(id:String):Bool;
	function getNumber(id:String):Float;
	function getString(id:String):String;
	function getUser(id:String):User;
}

typedef InteractionReplyOptions = {
	@:optional var tts:Bool;
	@:optional var nonce:String;
	@:optional var content:String;
	@:optional var embeds:EitherType<Array<MessageEmbed>, Array<APIEmbed>>;
	@:optional var allowedMentios:MessageMentionOptions;
	@:optional var files:Array<FileOptions>;
	@:optional var attachments:Array<MessageAttachment>;
}

typedef InteractionDeferReplyOptions = {
	@:optional var ephemeral:Bool;
	@:optional var fetchReply:Bool;
}