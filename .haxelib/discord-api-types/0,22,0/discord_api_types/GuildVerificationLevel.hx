package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-verification-level
**/
@:enum extern abstract GuildVerificationLevel(Int) from Int to Int {
	/**
		Unrestricted
	**/
	var None = 0;
	/**
		Must have verified email on account
	**/
	var Low = 1;
	/**
		Must be registered on Discord for longer than 5 minutes
	**/
	var Medium = 2;
	/**
		Must be a member of the guild for longer than 10 minutes
	**/
	var High = 3;
	/**
		Must have a verified phone number
	**/
	var VeryHigh = 4;
}