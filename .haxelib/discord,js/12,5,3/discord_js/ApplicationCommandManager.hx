package discord_js;

import haxe.extern.EitherType;
import js.lib.Promise;

@:jsRequire("discord.js", "ApplicationCommandManager")
extern class ApplicationCommandManager {
	public var client:Client;
	public var cache:Collection<Snowflake, ApplicationCommand>; 
	public var permissions:ApplicationCommandPermissionsManager;
	function create(command:Array<ApplicationCommandData>, ?guildId:Snowflake):Promise<ApplicationCommand>;
	function delete(command:ApplicationCommandResolvable, ?guildId:Snowflake):Promise<Null<ApplicationCommand>>;
	function edit(command:ApplicationCommandResolvable, data:ApplicationCommandData, ?guildId:Snowflake):Promise<Null<ApplicationCommand>>;
	function fetch(?id:String, ?options:FetchApplictionCommandOptions):Promise<EitherType<Collection<String, ApplicationCommand>, ApplicationCommand>>;
	function set(commands:Array<ApplicationCommandData>, ?guildId:Snowflake):Promise<Null<ApplicationCommand>>;

}

typedef FetchApplictionCommandOptions = {
	@:optional var cache:Bool;
	@:optional var force:Bool;
	@:optional var guildId:String;
}

typedef ApplicationCommandResolvable = EitherType<String, ApplicationCommand>;

typedef ApplicationCommandData = {
	var name:String;
	var description:String;
	@:optional var type:ApplicationCommandType;
	@:optional var options:Array<ApplicationCommandOptionData>;
	@:optional var defaultPermissions:Bool;
}

enum abstract ApplicationCommandType(String) {
	var CHAT_INPUT;
	var USER;
	var MESSAGE;
}

typedef ApplicationCommandOptionData = {
	//Complete @ https://discord.js.org/#/docs/main/stable/typedef/ApplicationCommandOptionData
}

