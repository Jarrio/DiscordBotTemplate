package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#embed-object-embed-structure
	
	Length limit: 6000 characters
**/
typedef APIEmbed = {
	/**
		Title of embed
		
		Length limit: 256 characters
	**/
	@:optional
	var title : String;
	/**
		Type of embed (always "rich" for webhook embeds)
	**/
	@:optional
	var type : EmbedType;
	/**
		Description of embed
		
		Length limit: 4096 characters
	**/
	@:optional
	var description : String;
	/**
		URL of embed
	**/
	@:optional
	var url : String;
	/**
		Timestamp of embed content
	**/
	@:optional
	var timestamp : String;
	/**
		Color code of the embed
	**/
	@:optional
	var color : Float;
	/**
		Footer information
		
		See https://discord.com/developers/docs/resources/channel#embed-object-embed-footer-structure
	**/
	@:optional
	var footer : APIEmbedFooter;
	/**
		Image information
		
		See https://discord.com/developers/docs/resources/channel#embed-object-embed-image-structure
	**/
	@:optional
	var image : APIEmbedImage;
	/**
		Thumbnail information
		
		See https://discord.com/developers/docs/resources/channel#embed-object-embed-thumbnail-structure
	**/
	@:optional
	var thumbnail : APIEmbedThumbnail;
	/**
		Video information
		
		See https://discord.com/developers/docs/resources/channel#embed-object-embed-video-structure
	**/
	@:optional
	var video : APIEmbedVideo;
	/**
		Provider information
		
		See https://discord.com/developers/docs/resources/channel#embed-object-embed-provider-structure
	**/
	@:optional
	var provider : APIEmbedProvider;
	/**
		Author information
		
		See https://discord.com/developers/docs/resources/channel#embed-object-embed-author-structure
	**/
	@:optional
	var author : APIEmbedAuthor;
	/**
		Fields information
		
		Length limit: 25 field objects
		
		See https://discord.com/developers/docs/resources/channel#embed-object-embed-field-structure
	**/
	@:optional
	var fields : Array<APIEmbedField>;
};