package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-video-structure
**/
typedef APIEmbedVideo = {
	/**
		Source url of video
	**/
	@:optional
	var url : String;
	/**
		Height of video
	**/
	@:optional
	var height : Float;
	/**
		Width of video
	**/
	@:optional
	var width : Float;
};