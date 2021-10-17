package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#group-dm-add-recipient
**/
typedef RESTPutAPIChannelRecipientJSONBody = {
	/**
		Access token of a user that has granted your app the `gdm.join` scope
	**/
	var access_token : String;
	/**
		Nickname of the user being added
	**/
	@:optional
	var nick : String;
};