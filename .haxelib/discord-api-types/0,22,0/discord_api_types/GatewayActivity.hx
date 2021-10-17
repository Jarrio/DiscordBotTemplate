package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#activity-object-activity-structure
**/
typedef GatewayActivity = {
	/**
		The activity's id
	**/
	var id : String;
	/**
		The activity's name
	**/
	var name : String;
	/**
		Activity type
		
		See https://discord.com/developers/docs/topics/gateway#activity-object-activity-types
	**/
	var type : ActivityType;
	/**
		Stream url, is validated when type is `1`
	**/
	@:optional
	var url : String;
	/**
		Unix timestamp of when the activity was added to the user's session
	**/
	var created_at : Float;
	/**
		Unix timestamps for start and/or end of the game
	**/
	@:optional
	var timestamps : GatewayActivityTimestamps;
	@:optional
	var sync_id : String;
	@:optional
	var platform : ActivityPlatform;
	/**
		Application id for the game
	**/
	@:optional
	var application_id : Dynamic;
	/**
		What the player is currently doing
	**/
	@:optional
	var details : String;
	/**
		The user's current party status
	**/
	@:optional
	var state : String;
	/**
		The emoji used for a custom status
		
		See https://discord.com/developers/docs/topics/gateway#activity-object-activity-emoji
	**/
	@:optional
	var emoji : GatewayActivityEmoji;
	@:optional
	var session_id : String;
	/**
		Information for the current party of the player
		
		See https://discord.com/developers/docs/topics/gateway#activity-object-activity-party
	**/
	@:optional
	var party : GatewayActivityParty;
	/**
		Images for the presence and their hover texts
		
		See https://discord.com/developers/docs/topics/gateway#activity-object-activity-assets
	**/
	@:optional
	var assets : {
		@:optional
		var large_image : String;
		@:optional
		var large_text : String;
		@:optional
		var small_image : String;
		@:optional
		var small_text : String;
	};
	/**
		Secrets for Rich Presence joining and spectating
		
		See https://discord.com/developers/docs/topics/gateway#activity-object-activity-secrets
	**/
	@:optional
	var secrets : {
		@:optional
		var join : String;
		@:optional
		var spectate : String;
		@:optional
		var match : String;
	};
	/**
		Whether or not the activity is an instanced game session
	**/
	@:optional
	var instance : Bool;
	/**
		Activity flags `OR`d together, describes what the payload includes
		
		See https://discord.com/developers/docs/topics/gateway#activity-object-activity-flags
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	@:optional
	var flags : ActivityFlags;
	/**
		The custom buttons shown in the Rich Presence (max 2)
	**/
	@:optional
	var buttons : ts.AnyOf2<Array<String>, Array<GatewayActivityButton>>;
};