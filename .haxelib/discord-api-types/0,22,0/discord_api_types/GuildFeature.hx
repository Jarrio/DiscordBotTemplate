package discord_api_types;

/**
	https://discord.com/developers/docs/resources/guild#guild-object-guild-features
**/
@:enum extern abstract GuildFeature(String) from String to String {
	/**
		Guild has access to set an animated guild icon
	**/
	var AnimatedIcon = "ANIMATED_ICON";
	/**
		Guild has access to set a guild banner image
	**/
	var Banner = "BANNER";
	/**
		Guild has access to use commerce features (i.e. create store channels)
	**/
	var Commerce = "COMMERCE";
	/**
		Guild can enable welcome screen, Membership Screening and discovery, and receives community updates
	**/
	var Community = "COMMUNITY";
	/**
		Guild is able to be discovered in the directory
	**/
	var Discoverable = "DISCOVERABLE";
	/**
		Guild is able to be featured in the directory
	**/
	var Featurable = "FEATURABLE";
	/**
		Guild has access to set an invite splash background
	**/
	var InviteSplash = "INVITE_SPLASH";
	/**
		Guild has access to create news channels
	**/
	var News = "NEWS";
	/**
		Guild is partnered
	**/
	var Partnered = "PARTNERED";
	var RelayEnabled = "RELAY_ENABLED";
	/**
		Guild has access to set a vanity URL
	**/
	var VanityURL = "VANITY_URL";
	/**
		Guild is verified
	**/
	var Verified = "VERIFIED";
	/**
		Guild has access to set 384kbps bitrate in voice (previously VIP voice servers)
	**/
	var VIPRegions = "VIP_REGIONS";
	/**
		Guild has enabled the welcome screen
	**/
	var WelcomeScreenEnabled = "WELCOME_SCREEN_ENABLED";
	/**
		Guild has enabled Membership Screening
	**/
	var MemberVerificationGateEnabled = "MEMBER_VERIFICATION_GATE_ENABLED";
	/**
		Guild can be previewed before joining via Membership Screening or the directory
	**/
	var PreviewEnabled = "PREVIEW_ENABLED";
	/**
		Guild has enabled ticketed events
	**/
	var TicketedEventsEnabled = "TICKETED_EVENTS_ENABLED";
	/**
		Guild has enabled monetization
	**/
	var MonetizationEnabled = "MONETIZATION_ENABLED";
	/**
		Guild has increased custom sticker slots
	**/
	var MoreStickers = "MORE_STICKERS";
	/**
		Guild has access to the three day archive time for threads
	**/
	var ThreeDayThreadArchive = "THREE_DAY_THREAD_ARCHIVE";
	/**
		Guild has access to the seven day archive time for threads
	**/
	var SevenDayThreadArchive = "SEVEN_DAY_THREAD_ARCHIVE";
	/**
		Guild has access to create private threads
	**/
	var PrivateThreads = "PRIVATE_THREADS";
}