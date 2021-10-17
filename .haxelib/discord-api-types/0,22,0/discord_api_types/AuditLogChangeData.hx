package discord_api_types;

typedef AuditLogChangeData<K, D> = {
	var key : K;
	/**
		The new value
		
		If `new_value` is not present in the change object, while `old_value` is,
		that means the property that was changed has been reset, or set to `null`
	**/
	@:optional
	var new_value : D;
	@:optional
	var old_value : D;
};