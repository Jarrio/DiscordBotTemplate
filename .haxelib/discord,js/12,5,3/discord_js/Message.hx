package discord_js;

@:jsRequire("discord.js", "Message") extern class Message extends Base {
	function new(client:Client, data:Dynamic, channel:ts.AnyOf3<TextChannel, NewsChannel, DMChannel>);
	private var _edits : Array<Message>;
	private function patch(data:Dynamic):Message;
	public var activity : Null<MessageActivity>;
	public var application : Null<ClientApplication>;
	public var attachments : Collection<String, MessageAttachment>;
	public var author : User;
	public var channel : ts.AnyOf3<TextChannel, NewsChannel, DMChannel>;
	public final cleanContent : String;
	public var content : String;
	public final createdAt : js.lib.Date;
	public var createdTimestamp : Float;
	public final deletable : Bool;
	public var deleted : Bool;
	public final editable : Bool;
	public final editedAt : Null<js.lib.Date>;
	public var editedTimestamp : Null<Float>;
	public final edits : Array<Message>;
	public var embeds : Array<MessageEmbed>;
	public final guild : Null<Guild>;
	public var id : String;
	public final member : Null<GuildMember>;
	public var mentions : MessageMentions;
	public var nonce : Null<String>;
	public final partial : Bool;
	public final pinnable : Bool;
	public var pinned : Bool;
	public var reactions : ReactionManager;
	public var system : Bool;
	public var tts : Bool;
	public var type : MessageType;
	public final url : String;
	public var webhookID : Null<String>;
	public var flags : {
		var bitfield : Float;
		dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
		dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
		dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
		dynamic function freeze():{
			var bitfield : Float;
			dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
			dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
			dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
			dynamic function freeze():{
				var bitfield : Float;
				dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
				dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
				dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
				dynamic function freeze():{
					var bitfield : Float;
					dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
					dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
					dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
					dynamic function freeze():{
						var bitfield : Float;
						dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
						dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
						dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
						dynamic function freeze():{
							var bitfield : Float;
							dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
							dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
							dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
							dynamic function freeze():{
								var bitfield : Float;
								dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
								dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
								dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
								dynamic function freeze():{
									var bitfield : Float;
									dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
									dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
									dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
									dynamic function freeze():{
										var bitfield : Float;
										dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
										dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
										dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
										dynamic function freeze():{
											var bitfield : Float;
											dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
											dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
											dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
											dynamic function freeze():{
												var bitfield : Float;
												dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
												dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
												dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
												dynamic function freeze():{
													var bitfield : Float;
													dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
													dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
													dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
													dynamic function freeze():{
														var bitfield : Float;
														dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
														dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
														dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
														dynamic function freeze():{
															var bitfield : Float;
															dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
															dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
															dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
															dynamic function freeze():{
																var bitfield : Float;
																dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																dynamic function freeze():{
																	var bitfield : Float;
																	dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																	dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																	dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																	dynamic function freeze():{
																		var bitfield : Float;
																		dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																		dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																		dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																		dynamic function freeze():{
																			var bitfield : Float;
																			dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																			dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																			dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																			dynamic function freeze():{
																				var bitfield : Float;
																				dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																				dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																				dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																				dynamic function freeze():{
																					var bitfield : Float;
																					dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																					dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																					dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																					dynamic function freeze():{
																						var bitfield : Float;
																						dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																						dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																						dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																						dynamic function freeze():{
																							var bitfield : Float;
																							dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																							dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																							dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																							dynamic function freeze():{
																								var bitfield : Float;
																								dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<MessageFlagsString>;
																								dynamic function any(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																								dynamic function equals(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																								dynamic function freeze():{
																									var bitfield : Float;
																									dynamic function add(bits:haxe.extern.Rest<Any>):Dynamic<Dynamic>;
																									dynamic function any(bit:BitFieldResolvable<Dynamic>):Bool;
																									dynamic function equals(bit:BitFieldResolvable<Dynamic>):Bool;
																									dynamic function freeze():{
																										var bitfield : Dynamic;
																										dynamic function add(bits:haxe.extern.Rest<Any>):Dynamic;
																										dynamic function any(bit:Dynamic):Dynamic;
																										dynamic function equals(bit:Dynamic):Dynamic;
																										dynamic function freeze():Dynamic;
																										dynamic function has(bit:Dynamic):Dynamic;
																										dynamic function missing(bits:Dynamic, hasParam:haxe.extern.Rest<Any>):Dynamic;
																										dynamic function remove(bits:haxe.extern.Rest<Any>):Dynamic;
																										dynamic function serialize(hasParam:haxe.extern.Rest<Any>):Dynamic;
																										dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic;
																										dynamic function toJSON():Dynamic;
																										dynamic function valueOf():Dynamic;
																									};
																									dynamic function has(bit:BitFieldResolvable<Dynamic>):Bool;
																									dynamic function missing(bits:BitFieldResolvable<Dynamic>, hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>;
																									dynamic function remove(bits:haxe.extern.Rest<Any>):Dynamic<Dynamic>;
																									dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																										var CROSSPOSTED : Dynamic;
																										var IS_CROSSPOST : Dynamic;
																										var SUPPRESS_EMBEDS : Dynamic;
																										var SOURCE_MESSAGE_DELETED : Dynamic;
																										var URGENT : Dynamic;
																									};
																									dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>;
																									dynamic function toJSON():Float;
																									dynamic function valueOf():Float;
																								};
																								dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																								dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																								dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<MessageFlagsString>;
																								dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																									var CROSSPOSTED : Bool;
																									var IS_CROSSPOST : Bool;
																									var SUPPRESS_EMBEDS : Bool;
																									var SOURCE_MESSAGE_DELETED : Bool;
																									var URGENT : Bool;
																								};
																								dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																								dynamic function toJSON():Float;
																								dynamic function valueOf():Float;
																							};
																							dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																							dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																							dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																							dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																								var CROSSPOSTED : Bool;
																								var IS_CROSSPOST : Bool;
																								var SUPPRESS_EMBEDS : Bool;
																								var SOURCE_MESSAGE_DELETED : Bool;
																								var URGENT : Bool;
																							};
																							dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																							dynamic function toJSON():Float;
																							dynamic function valueOf():Float;
																						};
																						dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																						dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																						dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																						dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																							var CROSSPOSTED : Bool;
																							var IS_CROSSPOST : Bool;
																							var SUPPRESS_EMBEDS : Bool;
																							var SOURCE_MESSAGE_DELETED : Bool;
																							var URGENT : Bool;
																						};
																						dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																						dynamic function toJSON():Float;
																						dynamic function valueOf():Float;
																					};
																					dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																					dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																					dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																					dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																						var CROSSPOSTED : Bool;
																						var IS_CROSSPOST : Bool;
																						var SUPPRESS_EMBEDS : Bool;
																						var SOURCE_MESSAGE_DELETED : Bool;
																						var URGENT : Bool;
																					};
																					dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																					dynamic function toJSON():Float;
																					dynamic function valueOf():Float;
																				};
																				dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																				dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																				dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																				dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																					var CROSSPOSTED : Bool;
																					var IS_CROSSPOST : Bool;
																					var SUPPRESS_EMBEDS : Bool;
																					var SOURCE_MESSAGE_DELETED : Bool;
																					var URGENT : Bool;
																				};
																				dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																				dynamic function toJSON():Float;
																				dynamic function valueOf():Float;
																			};
																			dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																			dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																			dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																			dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																				var CROSSPOSTED : Bool;
																				var IS_CROSSPOST : Bool;
																				var SUPPRESS_EMBEDS : Bool;
																				var SOURCE_MESSAGE_DELETED : Bool;
																				var URGENT : Bool;
																			};
																			dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																			dynamic function toJSON():Float;
																			dynamic function valueOf():Float;
																		};
																		dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																		dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																		dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																		dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																			var CROSSPOSTED : Bool;
																			var IS_CROSSPOST : Bool;
																			var SUPPRESS_EMBEDS : Bool;
																			var SOURCE_MESSAGE_DELETED : Bool;
																			var URGENT : Bool;
																		};
																		dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																		dynamic function toJSON():Float;
																		dynamic function valueOf():Float;
																	};
																	dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																	dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																	dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																	dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																		var CROSSPOSTED : Bool;
																		var IS_CROSSPOST : Bool;
																		var SUPPRESS_EMBEDS : Bool;
																		var SOURCE_MESSAGE_DELETED : Bool;
																		var URGENT : Bool;
																	};
																	dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																	dynamic function toJSON():Float;
																	dynamic function valueOf():Float;
																};
																dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
																dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
																dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																	var CROSSPOSTED : Bool;
																	var IS_CROSSPOST : Bool;
																	var SUPPRESS_EMBEDS : Bool;
																	var SOURCE_MESSAGE_DELETED : Bool;
																	var URGENT : Bool;
																};
																dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
																dynamic function toJSON():Float;
																dynamic function valueOf():Float;
															};
															dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
															dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
															dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
															dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																var CROSSPOSTED : Bool;
																var IS_CROSSPOST : Bool;
																var SUPPRESS_EMBEDS : Bool;
																var SOURCE_MESSAGE_DELETED : Bool;
																var URGENT : Bool;
															};
															dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
															dynamic function toJSON():Float;
															dynamic function valueOf():Float;
														};
														dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
														dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
														dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
														dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
															var CROSSPOSTED : Bool;
															var IS_CROSSPOST : Bool;
															var SUPPRESS_EMBEDS : Bool;
															var SOURCE_MESSAGE_DELETED : Bool;
															var URGENT : Bool;
														};
														dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
														dynamic function toJSON():Float;
														dynamic function valueOf():Float;
													};
													dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
													dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
													dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
													dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
														var CROSSPOSTED : Bool;
														var IS_CROSSPOST : Bool;
														var SUPPRESS_EMBEDS : Bool;
														var SOURCE_MESSAGE_DELETED : Bool;
														var URGENT : Bool;
													};
													dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
													dynamic function toJSON():Float;
													dynamic function valueOf():Float;
												};
												dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
												dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
												dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
												dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
													var CROSSPOSTED : Bool;
													var IS_CROSSPOST : Bool;
													var SUPPRESS_EMBEDS : Bool;
													var SOURCE_MESSAGE_DELETED : Bool;
													var URGENT : Bool;
												};
												dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
												dynamic function toJSON():Float;
												dynamic function valueOf():Float;
											};
											dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
											dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
											dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
											dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
												var CROSSPOSTED : Bool;
												var IS_CROSSPOST : Bool;
												var SUPPRESS_EMBEDS : Bool;
												var SOURCE_MESSAGE_DELETED : Bool;
												var URGENT : Bool;
											};
											dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
											dynamic function toJSON():Float;
											dynamic function valueOf():Float;
										};
										dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
										dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
										dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
										dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
											var CROSSPOSTED : Bool;
											var IS_CROSSPOST : Bool;
											var SUPPRESS_EMBEDS : Bool;
											var SOURCE_MESSAGE_DELETED : Bool;
											var URGENT : Bool;
										};
										dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
										dynamic function toJSON():Float;
										dynamic function valueOf():Float;
									};
									dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
									dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
									dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
									dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
										var CROSSPOSTED : Bool;
										var IS_CROSSPOST : Bool;
										var SUPPRESS_EMBEDS : Bool;
										var SOURCE_MESSAGE_DELETED : Bool;
										var URGENT : Bool;
									};
									dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
									dynamic function toJSON():Float;
									dynamic function valueOf():Float;
								};
								dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
								dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
								dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
								dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
									var CROSSPOSTED : Bool;
									var IS_CROSSPOST : Bool;
									var SUPPRESS_EMBEDS : Bool;
									var SOURCE_MESSAGE_DELETED : Bool;
									var URGENT : Bool;
								};
								dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
								dynamic function toJSON():Float;
								dynamic function valueOf():Float;
							};
							dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
							dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
							dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
							dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
								var CROSSPOSTED : Bool;
								var IS_CROSSPOST : Bool;
								var SUPPRESS_EMBEDS : Bool;
								var SOURCE_MESSAGE_DELETED : Bool;
								var URGENT : Bool;
							};
							dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
							dynamic function toJSON():Float;
							dynamic function valueOf():Float;
						};
						dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
						dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
						dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
						dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
							var CROSSPOSTED : Bool;
							var IS_CROSSPOST : Bool;
							var SUPPRESS_EMBEDS : Bool;
							var SOURCE_MESSAGE_DELETED : Bool;
							var URGENT : Bool;
						};
						dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
						dynamic function toJSON():Float;
						dynamic function valueOf():Float;
					};
					dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
					dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
					dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
					dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
						var CROSSPOSTED : Bool;
						var IS_CROSSPOST : Bool;
						var SUPPRESS_EMBEDS : Bool;
						var SOURCE_MESSAGE_DELETED : Bool;
						var URGENT : Bool;
					};
					dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
					dynamic function toJSON():Float;
					dynamic function valueOf():Float;
				};
				dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
				dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
				dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
				dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
					var CROSSPOSTED : Bool;
					var IS_CROSSPOST : Bool;
					var SUPPRESS_EMBEDS : Bool;
					var SOURCE_MESSAGE_DELETED : Bool;
					var URGENT : Bool;
				};
				dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
				dynamic function toJSON():Float;
				dynamic function valueOf():Float;
			};
			dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
			dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
			dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
			dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
				var CROSSPOSTED : Bool;
				var IS_CROSSPOST : Bool;
				var SUPPRESS_EMBEDS : Bool;
				var SOURCE_MESSAGE_DELETED : Bool;
				var URGENT : Bool;
			};
			dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
			dynamic function toJSON():Float;
			dynamic function valueOf():Float;
		};
		dynamic function has(bit:BitFieldResolvable<MessageFlagsString>):Bool;
		dynamic function missing(bits:BitFieldResolvable<MessageFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
		dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<MessageFlagsString>>):BitField<MessageFlagsString>;
		dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
			var CROSSPOSTED : Bool;
			var IS_CROSSPOST : Bool;
			var SUPPRESS_EMBEDS : Bool;
			var SOURCE_MESSAGE_DELETED : Bool;
			var URGENT : Bool;
		};
		dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<MessageFlagsString>;
		dynamic function toJSON():Float;
		dynamic function valueOf():Float;
	};
	public var reference : Null<MessageReference>;
	public function awaitReactions(filter:CollectorFilter, ?options:AwaitReactionsOptions):js.lib.Promise<Collection<String, MessageReaction>>;
	public function createReactionCollector(filter:CollectorFilter, ?options:ReactionCollectorOptions):ReactionCollector;
	public function delete(?options:{ @:optional var timeout : Float; @:optional var reason : String; }):js.lib.Promise<Message>;
	@:overload(function(content:Dynamic, options:ts.AnyOf2<MessageEmbed, MessageEditOptions>):js.lib.Promise<Message> { })
	public function edit(content:ts.AnyOf9<String, Float, { }, Bool, js.lib.Symbol, APIMessage, MessageEmbed, haxe.ds.ReadOnlyArray<Dynamic>, MessageEditOptions>):js.lib.Promise<Message>;
	public function equals(message:Message, rawData:Dynamic):Bool;
	public function fetchWebhook():js.lib.Promise<Webhook>;
	public function crosspost():js.lib.Promise<Message>;
	public function fetch(?force:Bool):js.lib.Promise<Message>;
	public function pin(?options:{ @:optional var reason : String; }):js.lib.Promise<Message>;
	public function react(emoji:EmojiResolvable):js.lib.Promise<MessageReaction>;
	@:overload(function(options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(options:ts.AnyOf2<APIMessage, MessageOptions>):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	@:overload(function(content:Dynamic, options:ts.AnyOf4<MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, Dynamic>):js.lib.Promise<Message> { })
	@:overload(function(content:Dynamic, options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(content:Dynamic, options:MessageOptions):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	public function reply(content:ts.AnyOf10<String, Float, { }, Bool, js.lib.Symbol, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, haxe.ds.ReadOnlyArray<Dynamic>, Dynamic>):js.lib.Promise<Message>;
	public function suppressEmbeds(?suppress:Bool):js.lib.Promise<Message>;
	public function toJSON():Dynamic;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	public function unpin(?options:{ @:optional var reason : String; }):js.lib.Promise<Message>;
	static var prototype : Message;
}