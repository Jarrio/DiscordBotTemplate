package discord_js;

typedef AuditLogChange = {
	var key : String;
	@:optional
	var old : Dynamic;
	@:optional
	@:native("new")
	var new_ : Dynamic;
};