package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#integration-object
**/
typedef APIGuildIntegration = {
	/**
		Integration id
	**/
	var id : Dynamic;
	/**
		Integration name
	**/
	var name : String;
	/**
		Integration type
	**/
	var type : APIGuildInteractionType;
	/**
		Is this integration enabled
	**/
	var enabled : Bool;
	/**
		Is this integration syncing
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var syncing : Bool;
	/**
		ID that this integration uses for "subscribers"
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var role_id : Dynamic;
	/**
		Whether emoticons should be synced for this integration (`twitch` only currently)
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var enable_emoticons : Bool;
	/**
		The behavior of expiring subscribers
		
		**This field is not provided for `discord` bot integrations.**
		
		See https://discord.com/developers/docs/resources/guild#integration-object-integration-expire-behaviors
	**/
	@:optional
	var expire_behavior : IntegrationExpireBehavior;
	/**
		The grace period (in days) before expiring subscribers
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var expire_grace_period : Float;
	/**
		User for this integration
		
		**This field is not provided for `discord` bot integrations.**
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	@:optional
	var user : Dynamic;
	/**
		Integration account information
		
		See https://discord.com/developers/docs/resources/guild#integration-account-object
	**/
	var account : APIIntegrationAccount;
	/**
		When this integration was last synced
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var synced_at : String;
	/**
		How many subscribers this integration has
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var subscriber_count : Float;
	/**
		Has this integration been revoked
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var revoked : Bool;
	/**
		The bot/OAuth2 application for discord integrations
		
		See https://discord.com/developers/docs/resources/guild#integration-application-object
		
		**This field is not provided for `discord` bot integrations.**
	**/
	@:optional
	var application : APIGuildIntegrationApplication;
};