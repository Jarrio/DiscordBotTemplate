package discord_js;

import haxe.extern.EitherType;
import discord_js.Message;
import js.lib.Promise;

@:jsRequire("discord.js", "ThreadManager") extern class ThreadManager  {
	public var cache:Collection<Snowflake, ThreadChannel>;
	public var channel:EitherType<NewsChannel, TextChannel>;
	public final client:Client;
	public function create(?options:ThreadCreateOptions):Promise<ThreadChannel>;
	public function fetch(?channel:EitherType<ThreadChannel, Snowflake>, ?cache_options:BaseFetchOptions):Promise<ThreadChannel>;
}

typedef ThreadCreateOptions = {
	var name:String;
	@:optional var autoArchiveDuration:ThreadAutoArchiveDuration;
	@:optional var reason:String;
	@:optional var startMessage:Message;
	@:optional var type:ThreadChannelTypes;
	@:optional var invitable:Bool;
}

typedef BaseFetchOptions = {
	@:optional var cache:Bool;
	@:optional var force:Bool;
}

enum abstract ThreadAutoArchiveDuration(Int) {
	var one_hr = 60;
	var one_day = 1440;
	var three_days = 4320;
	var one_week = 10080;
}

enum abstract ThreadChannelTypes(String) {
	var GUILD_NEWS_THREAD;
	var GUILD_PUBLIC_THREAD;
	var GUILD_PRIVATE_THREAD;
}

