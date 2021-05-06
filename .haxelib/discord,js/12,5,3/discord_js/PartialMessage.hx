package discord_js;

typedef PartialMessage = {
	var attachments : Collection<String, MessageAttachment>;
	var channel : ts.AnyOf3<TextChannel, NewsChannel, DMChannel>;
	final deletable : Bool;
	final crosspostable : Bool;
	final editable : Bool;
	final edits : Array<Message>;
	var embeds : Array<MessageEmbed>;
	var flags : {
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
	var mentions : MessageMentions;
	final pinnable : Bool;
	var reactions : ReactionManager;
	final url : String;
	final client : Client;
	final createdAt : js.lib.Date;
	final createdTimestamp : Float;
	var deleted : Bool;
	var id : String;
	var partial : Bool;
	function fetch():js.lib.Promise<Message>;
	dynamic function equals(message:Message, rawData:Dynamic):Bool;
	dynamic function toJSON():Dynamic;
	/**
		Returns the primitive value of the specified object.
	**/
	@:overload(function():String { })
	dynamic function valueOf():Dynamic;
	var member : Null<GuildMember>;
	var type : Null<MessageType>;
	dynamic function delete(?options:{ @:optional var timeout : Float; @:optional var reason : String; }):js.lib.Promise<Message>;
	/**
		Returns a string representation of an object.
	**/
	dynamic function toString():String;
	var system : Null<Bool>;
	var guild : Null<Guild>;
	@:overload(function(content:Dynamic, options:ts.AnyOf2<MessageEmbed, MessageEditOptions>):js.lib.Promise<Message> { })
	dynamic function edit(content:ts.AnyOf9<String, Float, { }, Bool, js.lib.Symbol, APIMessage, MessageEmbed, haxe.ds.ReadOnlyArray<Dynamic>, MessageEditOptions>):js.lib.Promise<Message>;
	var activity : Null<MessageActivity>;
	var application : Null<ClientApplication>;
	var author : Null<User>;
	var cleanContent : Null<String>;
	var content : Null<String>;
	var editedAt : Null<js.lib.Date>;
	var editedTimestamp : Null<Float>;
	var nonce : Null<String>;
	var pinned : Null<Bool>;
	var tts : Null<Bool>;
	var webhookID : Null<String>;
	var reference : Null<MessageReference>;
	dynamic function awaitReactions(filter:CollectorFilter, ?options:AwaitReactionsOptions):js.lib.Promise<Collection<String, MessageReaction>>;
	dynamic function createReactionCollector(filter:CollectorFilter, ?options:ReactionCollectorOptions):ReactionCollector;
	dynamic function fetchWebhook():js.lib.Promise<Webhook>;
	dynamic function crosspost():js.lib.Promise<Message>;
	dynamic function pin(?options:{ @:optional var reason : String; }):js.lib.Promise<Message>;
	dynamic function react(emoji:EmojiResolvable):js.lib.Promise<MessageReaction>;
	@:overload(function(options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(options:ts.AnyOf2<APIMessage, MessageOptions>):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	@:overload(function(content:Dynamic, options:ts.AnyOf4<MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, Dynamic>):js.lib.Promise<Message> { })
	@:overload(function(content:Dynamic, options:Dynamic):js.lib.Promise<Array<Message>> { })
	@:overload(function(content:Dynamic, options:MessageOptions):js.lib.Promise<ts.AnyOf2<Message, Array<Message>>> { })
	dynamic function reply(content:ts.AnyOf10<String, Float, { }, Bool, js.lib.Symbol, MessageEmbed, MessageAttachment, Array<ts.AnyOf2<MessageEmbed, MessageAttachment>>, haxe.ds.ReadOnlyArray<Dynamic>, Dynamic>):js.lib.Promise<Message>;
	dynamic function suppressEmbeds(?suppress:Bool):js.lib.Promise<Message>;
	dynamic function unpin(?options:{ @:optional var reason : String; }):js.lib.Promise<Message>;
};