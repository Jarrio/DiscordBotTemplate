package discordjs.rest;

/**
	The CDN link builder
**/
@:jsRequire("@discordjs/rest", "CDN") extern class CDN {
	function new(?base:String);
	private final base : Dynamic;
	/**
		Generates an app asset URL for a client's asset.
	**/
	function appAsset(clientID:String, assetHash:String, ?options:ImageURLOptions):String;
	/**
		Generates an app icon URL for a client's icon.
	**/
	function appIcon(clientID:String, iconHash:String, ?options:ImageURLOptions):String;
	/**
		Generates the default avatar URL for a discriminator.
	**/
	function defaultAvatar(discriminator:Float):String;
	/**
		Generates a discovery splash URL for a guild's discovery splash.
	**/
	function discoverySplash(guildID:String, splashHash:String, ?options:ImageURLOptions):String;
	/**
		Generates an emoji's URL for an emoji.
	**/
	function emoji(emojiID:String, ?extension:String):String;
	/**
		Generates a group DM icon URL for a group DM.
	**/
	function groupDMIcon(channelID:String, iconHash:String, ?options:ImageURLOptions):String;
	/**
		Generates a banner URL for a guild's banner.
	**/
	function guildBanner(guildID:String, bannerHash:String, ?options:ImageURLOptions):String;
	/**
		Generates an icon URL for a guild's icon.
	**/
	function guildIcon(guildID:String, iconHash:String, ?options:ImageURLOptions):String;
	/**
		Generates a guild invite splash URL for a guild's invite splash.
	**/
	function splash(guildID:String, splashHash:String, ?options:ImageURLOptions):String;
	/**
		Generates a team icon URL for a team's icon.
	**/
	function teamIcon(teamID:String, iconHash:String, ?options:ImageURLOptions):String;
	/**
		Generates a user avatar URL for a user's avatar.
	**/
	function userAvatar(userID:String, avatarHash:String, ?__2:ImageURLOptions):String;
	/**
		Constructs the URL for the resource
	**/
	private var makeURL : Dynamic;
	static var prototype : CDN;
}