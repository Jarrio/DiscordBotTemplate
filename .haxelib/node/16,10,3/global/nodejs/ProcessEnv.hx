package global.nodejs;

typedef ProcessEnv = {
	/**
		Can be used to change the default timezone at runtime
	**/
	@:optional
	var TZ : String;
};