package discord_api_types;

typedef RESTAPIPartialCurrentUserGuild = {
	var id : Dynamic;
	var name : String;
	var icon : Null<String>;
	var owner : Bool;
	var features : Array<Dynamic>;
	var permissions : js.html.Permissions;
};