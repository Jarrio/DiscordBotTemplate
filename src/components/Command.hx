package components;

import discord_js.User;

typedef Command = {
	var name:String;
	var content:CommandOptions;
}

enum CommandOptions {
	Hi;
	Test(category:Float, data:String);
	Boop(user:User);
}