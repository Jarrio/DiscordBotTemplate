package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#get-guild-widget-image
**/
typedef RESTGetAPIGuildWidgetImageQuery = {
	/**
		Style of the widget image returned
	**/
	@:optional
	var style : Dynamic;
};