package discord_api_types;

/**
	https://discord.com/developers/docs/resources/invite#invite-object
**/
typedef APIInvite = {
	/**
		The invite code (unique ID)
	**/
	var code : String;
	/**
		The guild this invite is for
		
		See https://discord.com/developers/docs/resources/guild#guild-object
	**/
	@:optional
	var guild : Dynamic;
	/**
		The channel this invite is for
		
		See https://discord.com/developers/docs/resources/channel#channel-object
	**/
	var channel : Dynamic;
	/**
		The user who created the invite
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var inviter : Dynamic;
	/**
		The type of target for this voice channel invite
		
		See https://discord.com/developers/docs/resources/invite#invite-object-target-user-types
	**/
	@:optional
	var target_type : InviteTargetType;
	/**
		The user whose stream to display for this voice channel stream invite
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var target_user : Dynamic;
	/**
		The embedded application to open for this voice channel embedded application invite
		
		See https://discord.com/developers/docs/topics/oauth2#application
	**/
	@:optional
	var target_application : Dynamic;
	/**
		Approximate count of online members, returned from the `GET /invites/<code>` endpoint when `with_counts` is `true`
	**/
	@:optional
	var approximate_presence_count : Float;
	/**
		Approximate count of total members, returned from the `GET /invites/<code>` endpoint when `with_counts` is `true`
	**/
	@:optional
	var approximate_member_count : Float;
	/**
		The expiration date of this invite, returned from the `GET /invites/<code>` endpoint when `with_expiration` is `true`
	**/
	@:optional
	var expires_at : String;
	/**
		The stage instance data if there is a public stage instance in the stage channel this invite is for
	**/
	@:optional
	var stage_instance : Dynamic;
};