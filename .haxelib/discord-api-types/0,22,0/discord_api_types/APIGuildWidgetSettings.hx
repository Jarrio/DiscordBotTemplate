package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-widget-object
**/
typedef APIGuildWidgetSettings = {
	/**
		Whether the widget is enabled
	**/
	var enabled : Bool;
	/**
		The widget channel id
	**/
	var channel_id : Dynamic;
};