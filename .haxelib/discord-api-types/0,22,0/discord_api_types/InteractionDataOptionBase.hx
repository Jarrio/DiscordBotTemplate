package discord_api_types;

typedef InteractionDataOptionBase<T, D> = {
	var name : String;
	var type : T;
	var value : D;
};