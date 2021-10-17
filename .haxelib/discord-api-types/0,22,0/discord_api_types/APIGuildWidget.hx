package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#get-guild-widget-example-get-guild-widget
**/
typedef APIGuildWidget = {
	var id : Dynamic;
	var name : String;
	var instant_invite : Null<String>;
	var channels : Array<APIGuildWidgetChannel>;
	var members : Array<APIGuildWidgetMember>;
	var presence_count : Float;
};