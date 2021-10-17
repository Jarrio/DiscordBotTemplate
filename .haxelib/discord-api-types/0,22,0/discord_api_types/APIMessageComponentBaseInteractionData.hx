package discord_api_types;

typedef APIMessageComponentBaseInteractionData<CType> = {
	/**
		The `custom_id` of the component
	**/
	var custom_id : String;
	/**
		The type of the component
	**/
	var component_type : CType;
};