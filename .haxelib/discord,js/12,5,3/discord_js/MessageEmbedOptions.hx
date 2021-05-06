package discord_js;

typedef MessageEmbedOptions = {
	@:optional
	var title : String;
	@:optional
	var description : String;
	@:optional
	var url : String;
	@:optional
	var timestamp : ts.AnyOf2<Float, js.lib.Date>;
	@:optional
	var color : ColorResolvable;
	@:optional
	var fields : Array<EmbedFieldData>;
	@:optional
	var files : Array<ts.AnyOf3<String, FileOptions, MessageAttachment>>;
	@:optional
	var author : Dynamic;
	@:optional
	var thumbnail : Dynamic;
	@:optional
	var image : Dynamic;
	@:optional
	var video : Dynamic;
	@:optional
	var footer : Dynamic;
};