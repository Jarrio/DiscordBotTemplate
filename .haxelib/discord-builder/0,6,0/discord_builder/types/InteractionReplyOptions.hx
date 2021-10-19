package discord_builder.types;

import discord_builder.types.BaseMessageOptions;

typedef InteractionReplyOptions = {
	> BaseMessageOptions,
	@:optional var ephemeral:Bool;
	@:optional var fetchReply:Bool;
}