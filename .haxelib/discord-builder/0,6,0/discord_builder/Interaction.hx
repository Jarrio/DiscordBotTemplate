package discord_builder;

import discord_js.User;
import discord_js.Permissions;
import discord_js.GuildMember;
import discord_js.Guild;
import discord_js.Client;
import discord_js.TextChannel;
import discord_api_types.Snowflake;

@:jsRequire('')
extern class Interaction {
	var applicationId:Snowflake;
	var channel:TextChannel;
	var channelId:Snowflake;
	var client:Client;
	var createdAt:Date;
	var createdTimestamp:Float;
	var guild:Guild;
	var id:Snowflake;
	var member:GuildMember;
	var memberPermissions:Permissions;
	var token:String;
	var user:User;
	var version:Float;
	public function inCachedGuild():Bool;
	public function inGuild():Bool;
	public function inRawGuild():Bool;
	public function isButton():Bool;
	public function isCommand():Bool;
	public function isContextMenu():Bool;
	public function isMessageComponent():Bool;
	public function isSelectMenu():Bool;
}