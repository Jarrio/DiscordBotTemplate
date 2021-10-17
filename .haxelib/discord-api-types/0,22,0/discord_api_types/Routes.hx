package discord_api_types;


@:native('Routes')
extern class Routes {
	static function applicationGuildCommands(client:String, server_id:String):Dynamic;
}