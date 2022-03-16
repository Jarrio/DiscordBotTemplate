package discord_js;

import discord_js.ApplicationCommandManager.ApplicationCommandResolvable;
import discord_js.RoleResolvable;
import discord_js.UserResolvable;
import haxe.extern.EitherType;
import discord_js.GuildResolvable;
import js.lib.Promise;
import discord_js.Snowflake;

extern class ApplicationCommandPermissionsManager {
	var client:Client;
	var commandId:Snowflake;
	var guild:Guild;
	var guildId:Snowflake;
	function add(option:AddApplicationCommandPermissionsOptions):Promise<Array<ApplicationCommandPermissions>>;
	function fetch(option:BaseApplicationCommandPermissionsOptions):Promise<Array<ApplicationCommandPermissions>>;
	function has(option:AddApplicationCommandPermissionsOptions):Promise<Array<Bool>>;
	function remove(option:AddApplicationCommandPermissionsOptions):Promise<Array<ApplicationCommandPermissions>>;
	function set(option:SetApplicationCommandPermissionsOptions):Promise<Array<ApplicationCommandPermissions>>;
}

typedef SetApplicationCommandPermissionsOptions = {
	> BaseApplicationCommandPermissionsOptions,
	@:optional var fullPermissions:Array<GuildApplicationCommandPermissionData>;
	@:optional var permissions:Array<ApplicationCommandPermissionData>;
}

typedef AddApplicationCommandPermissionsOptions = {
	> BaseApplicationCommandPermissionsOptions,
	var permissions:Array<ApplicationCommandPermissionData>;
}

typedef GuildApplicationCommandPermissionData = {
	@:optional var id:Snowflake;
	@:optional var permissions:Array<ApplicationCommandPermissionData>;
}


typedef ApplicationCommandPermissionData = {
	var id:Snowflake;
	var type:ApplicationCommandPermissionType;
	var permission:Bool;
}

typedef BaseApplicationCommandPermissionsOptions = {
	@:optional var guild:GuildResolvable;
	@:optional var command:EitherType<ApplicationCommand, Snowflake>;
}

typedef RemoveApplicationCommandPermissionsOptions = {
	var users:EitherType<UserResolvable, Array<UserResolvable>>;
	var roles:EitherType<RoleResolvable, Array<RoleResolvable>>;
}

typedef ApplicationCommandPermissions = ApplicationCommandPermissionData;

enum abstract ApplicationCommandPermissionType(String) {
	var ROLE;
	var USER;
}