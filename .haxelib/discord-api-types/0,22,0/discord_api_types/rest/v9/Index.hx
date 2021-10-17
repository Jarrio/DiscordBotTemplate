package discord_api_types.rest.v9;

@:jsRequire("discord-api-types/rest/v9/index") @valueModuleOnly extern class Index {
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