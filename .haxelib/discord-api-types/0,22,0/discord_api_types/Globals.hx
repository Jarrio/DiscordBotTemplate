package discord_api_types;

@:jsRequire("discord-api-types/globals") @valueModuleOnly extern class Globals {
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
}