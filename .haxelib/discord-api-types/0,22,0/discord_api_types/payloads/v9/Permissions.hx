package discord_api_types.payloads.v9;

@:jsRequire("discord-api-types/payloads/v9/permissions") @valueModuleOnly extern class Permissions {
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
}