package discordjs;

@:jsRequire("@discordjs/rest") @valueModuleOnly extern class Rest {
	static final DefaultUserAgent : String;
	static final DefaultRestOptions : Dynamic;
	static final ALLOWED_EXTENSIONS : ts.Tuple5<String, String, String, String, String>;
	static final ALLOWED_SIZES : ts.Tuple9<Int, Int, Int, Int, Int, Int, Int, Int, Int>;
}