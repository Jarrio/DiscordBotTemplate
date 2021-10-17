package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#invite-create
**/
typedef GatewayInviteCreateDispatchData = {
	/**
		The channel the invite is for
	**/
	var channel_id : Dynamic;
	/**
		The unique invite code
		
		See https://discord.com/developers/docs/resources/invite#invite-object
	**/
	var code : String;
	/**
		The time at which the invite was created
	**/
	var created_at : Float;
	/**
		The guild of the invite
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The user that created the invite
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var inviter : Dynamic;
	/**
		How long the invite is valid for (in seconds)
	**/
	var max_age : Float;
	/**
		The maximum number of times the invite can be used
	**/
	var max_uses : Float;
	/**
		The type of target for this voice channel invite
		
		See https://discord.com/developers/docs/resources/invite#invite-object-invite-target-types
	**/
	@:optional
	var target_type : Dynamic;
	/**
		The user whose stream to display for this voice channel stream invite
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var target_user : Dynamic;
	/**
		The embedded application to open for this voice channel embedded application invite
	**/
	@:optional
	var target_application : Dynamic;
	/**
		Whether or not the invite is temporary (invited users will be kicked on disconnect unless they're assigned a role)
	**/
	var temporary : Bool;
	/**
		How many times the invite has been used (always will be `0`)
	**/
	var uses : Int;
};