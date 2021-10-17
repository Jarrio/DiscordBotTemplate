@:jsRequire("discord-api-types") @valueModuleOnly extern class DiscordApiTypes {
	/**
		https://discord.com/developers/docs/reference#message-formatting-formats
	**/
	static final FormattingPatterns : {
		/**
			Regular expression for matching a user mention, strictly without a nickname
			
			The `id` group property is present on the `exec` result of this expression
		**/
		final User : js.lib.RegExp;
		/**
			Regular expression for matching a user mention, strictly with a nickname
			
			The `id` group property is present on the `exec` result of this expression
		**/
		final UserWithNickname : js.lib.RegExp;
		/**
			Regular expression for matching a user mention, with or without a nickname
			
			The `id` group property is present on the `exec` result of this expression
		**/
		final UserWithOptionalNickname : js.lib.RegExp;
		/**
			Regular expression for matching a channel mention
			
			The `id` group property is present on the `exec` result of this expression
		**/
		final Channel : js.lib.RegExp;
		/**
			Regular expression for matching a role mention
			
			The `id` group property is present on the `exec` result of this expression
		**/
		final Role : js.lib.RegExp;
		/**
			Regular expression for matching a custom emoji, either static or animated
			
			The `animated`, `name` and `id` group properties are present on the `exec` result of this expression
		**/
		final Emoji : js.lib.RegExp;
		/**
			Regular expression for matching strictly an animated custom emoji
			
			The `animated`, `name` and `id` group properties are present on the `exec` result of this expression
		**/
		final AnimatedEmoji : js.lib.RegExp;
		/**
			Regular expression for matching strictly a static custom emoji
			
			The `name` and `id` group properties are present on the `exec` result of this expression
		**/
		final StaticEmoji : js.lib.RegExp;
		/**
			Regular expression for matching a timestamp, either default or custom styled
			
			The `timestamp` and `style` group properties are present on the `exec` result of this expression
		**/
		final Timestamp : js.lib.RegExp;
		/**
			Regular expression for matching strictly default styled timestamps
			
			The `timestamp` group property is present on the `exec` result of this expression
		**/
		final DefaultStyledTimestamp : js.lib.RegExp;
		/**
			Regular expression for matching strictly custom styled timestamps
			
			The `timestamp` and `style` group properties are present on the `exec` result of this expression
		**/
		final StyledTimestamp : js.lib.RegExp;
	};
	static final GatewayVersion : String;
	/**
		https://discord.com/developers/docs/topics/permissions#permissions-bitwise-permission-flags
		
		These flags are exported as `BigInt`s and NOT numbers. Wrapping them in `Number()`
		may cause issues, try to use BigInts as much as possible or modules that can
		replicate them in some way
	**/
	static final PermissionFlagsBits : {
		final CreateInstantInvite : { };
		final KickMembers : { };
		final BanMembers : { };
		final Administrator : { };
		final ManageChannels : { };
		final ManageGuild : { };
		final AddReactions : { };
		final ViewAuditLog : { };
		final PrioritySpeaker : { };
		final Stream : { };
		final ViewChannel : { };
		final SendMessages : { };
		final SendTTSMessages : { };
		final ManageMessages : { };
		final EmbedLinks : { };
		final AttachFiles : { };
		final ReadMessageHistory : { };
		final MentionEveryone : { };
		final UseExternalEmojis : { };
		final ViewGuildInsights : { };
		final Connect : { };
		final Speak : { };
		final MuteMembers : { };
		final DeafenMembers : { };
		final MoveMembers : { };
		final UseVAD : { };
		final ChangeNickname : { };
		final ManageNicknames : { };
		final ManageRoles : { };
		final ManageWebhooks : { };
		final ManageEmojisAndStickers : { };
		final UseSlashCommands : { };
		final RequestToSpeak : { };
		final ManageThreads : { };
		final UsePublicThreads : { };
		final UsePrivateThreads : { };
		final UseExternalStickers : { };
	};
	static final APIVersion : String;
	static final Routes : {
		/**
			Route for:
			- GET `/guilds/{guild.id}/audit-logs`
		**/
		function guildAuditLog(guildId:Dynamic):Dynamic;
	};
	static final RouteBases : {
		final api : String;
		final cdn : String;
		final invite : String;
		final template : String;
		final gift : String;
	};
	static final OAuth2Routes : {
		final authorizationURL : String;
		final tokenURL : String;
		/**
			See https://tools.ietf.org/html/rfc7009
		**/
		final tokenRevocationURL : String;
	};
}