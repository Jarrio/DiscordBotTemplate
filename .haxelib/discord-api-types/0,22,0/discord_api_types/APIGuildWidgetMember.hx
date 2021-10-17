package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#get-guild-widget-example-get-guild-widget
**/
typedef APIGuildWidgetMember = {
	var id : String;
	var username : String;
	var discriminator : String;
	var avatar : Null<String>;
	var status : Dynamic;
	@:optional
	var activity : {
		var name : String;
	};
	var avatar_url : String;
};