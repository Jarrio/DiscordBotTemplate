package discord_js;

typedef ClientEvents = {
	var channelCreate : ts.Tuple1<Channel>;
	var channelDelete : ts.Tuple1<ts.AnyOf2<Channel, PartialDMChannel>>;
	var channelPinsUpdate : ts.Tuple2<ts.AnyOf2<Channel, PartialDMChannel>, js.lib.Date>;
	var channelUpdate : ts.Tuple2<Channel, Channel>;
	var debug : ts.Tuple1<String>;
	var warn : ts.Tuple1<String>;
	var disconnect : ts.Tuple2<Dynamic, Float>;
	var emojiCreate : ts.Tuple1<GuildEmoji>;
	var emojiDelete : ts.Tuple1<GuildEmoji>;
	var emojiUpdate : ts.Tuple2<GuildEmoji, GuildEmoji>;
	var error : ts.Tuple1<js.lib.Error>;
	var guildBanAdd : ts.Tuple2<Guild, User>;
	var guildBanRemove : ts.Tuple2<Guild, User>;
	var guildCreate : ts.Tuple1<Guild>;
	var guildDelete : ts.Tuple1<Guild>;
	var guildUnavailable : ts.Tuple1<Guild>;
	var guildIntegrationsUpdate : ts.Tuple1<Guild>;
	var guildMemberAdd : ts.Tuple1<GuildMember>;
	var guildMemberAvailable : ts.Tuple1<ts.AnyOf2<GuildMember, PartialGuildMember>>;
	var guildMemberRemove : ts.Tuple1<ts.AnyOf2<GuildMember, PartialGuildMember>>;
	var guildMembersChunk : ts.Tuple3<Collection<String, GuildMember>, Guild, {
		var count : Float;
		var index : Float;
		var nonce : Null<String>;
	}>;
	var guildMemberSpeaking : ts.Tuple2<ts.AnyOf2<GuildMember, PartialGuildMember>, {
		var bitfield : Float;
		dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
		dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
		dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
		dynamic function freeze():{
			var bitfield : Float;
			dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
			dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
			dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
			dynamic function freeze():{
				var bitfield : Float;
				dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
				dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
				dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
				dynamic function freeze():{
					var bitfield : Float;
					dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
					dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
					dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
					dynamic function freeze():{
						var bitfield : Float;
						dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
						dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
						dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
						dynamic function freeze():{
							var bitfield : Float;
							dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
							dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
							dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
							dynamic function freeze():{
								var bitfield : Float;
								dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
								dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
								dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
								dynamic function freeze():{
									var bitfield : Float;
									dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
									dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
									dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
									dynamic function freeze():{
										var bitfield : Float;
										dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
										dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
										dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
										dynamic function freeze():{
											var bitfield : Float;
											dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
											dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
											dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
											dynamic function freeze():{
												var bitfield : Float;
												dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
												dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
												dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
												dynamic function freeze():{
													var bitfield : Float;
													dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
													dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
													dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
													dynamic function freeze():{
														var bitfield : Float;
														dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
														dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
														dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
														dynamic function freeze():{
															var bitfield : Float;
															dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
															dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
															dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
															dynamic function freeze():{
																var bitfield : Float;
																dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
																dynamic function freeze():{
																	var bitfield : Float;
																	dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																	dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																	dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
																	dynamic function freeze():{
																		var bitfield : Float;
																		dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																		dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																		dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
																		dynamic function freeze():{
																			var bitfield : Float;
																			dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																			dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																			dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
																			dynamic function freeze():{
																				var bitfield : Float;
																				dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																				dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																				dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
																				dynamic function freeze():{
																					var bitfield : Float;
																					dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																					dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																					dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
																					dynamic function freeze():{
																						var bitfield : Float;
																						dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																						dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																						dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
																						dynamic function freeze():{
																							var bitfield : Float;
																							dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SpeakingString>;
																							dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool;
																							dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool;
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
																									var SPEAKING : Dynamic;
																									var SOUNDSHARE : Dynamic;
																									var PRIORITY_SPEAKING : Dynamic;
																								};
																								dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>;
																								dynamic function toJSON():Float;
																								dynamic function valueOf():Float;
																							};
																							dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																							dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																							dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SpeakingString>;
																							dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																								var SPEAKING : Bool;
																								var SOUNDSHARE : Bool;
																								var PRIORITY_SPEAKING : Bool;
																							};
																							dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																							dynamic function toJSON():Float;
																							dynamic function valueOf():Float;
																						};
																						dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																						dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																						dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																						dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																							var SPEAKING : Bool;
																							var SOUNDSHARE : Bool;
																							var PRIORITY_SPEAKING : Bool;
																						};
																						dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																						dynamic function toJSON():Float;
																						dynamic function valueOf():Float;
																					};
																					dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																					dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																					dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																					dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																						var SPEAKING : Bool;
																						var SOUNDSHARE : Bool;
																						var PRIORITY_SPEAKING : Bool;
																					};
																					dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																					dynamic function toJSON():Float;
																					dynamic function valueOf():Float;
																				};
																				dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																				dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																				dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																				dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																					var SPEAKING : Bool;
																					var SOUNDSHARE : Bool;
																					var PRIORITY_SPEAKING : Bool;
																				};
																				dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																				dynamic function toJSON():Float;
																				dynamic function valueOf():Float;
																			};
																			dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																			dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																			dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																			dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																				var SPEAKING : Bool;
																				var SOUNDSHARE : Bool;
																				var PRIORITY_SPEAKING : Bool;
																			};
																			dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																			dynamic function toJSON():Float;
																			dynamic function valueOf():Float;
																		};
																		dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																		dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																		dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																		dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																			var SPEAKING : Bool;
																			var SOUNDSHARE : Bool;
																			var PRIORITY_SPEAKING : Bool;
																		};
																		dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																		dynamic function toJSON():Float;
																		dynamic function valueOf():Float;
																	};
																	dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																	dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																	dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																	dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																		var SPEAKING : Bool;
																		var SOUNDSHARE : Bool;
																		var PRIORITY_SPEAKING : Bool;
																	};
																	dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																	dynamic function toJSON():Float;
																	dynamic function valueOf():Float;
																};
																dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
																dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
																dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																	var SPEAKING : Bool;
																	var SOUNDSHARE : Bool;
																	var PRIORITY_SPEAKING : Bool;
																};
																dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
																dynamic function toJSON():Float;
																dynamic function valueOf():Float;
															};
															dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
															dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
															dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
															dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																var SPEAKING : Bool;
																var SOUNDSHARE : Bool;
																var PRIORITY_SPEAKING : Bool;
															};
															dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
															dynamic function toJSON():Float;
															dynamic function valueOf():Float;
														};
														dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
														dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
														dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
														dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
															var SPEAKING : Bool;
															var SOUNDSHARE : Bool;
															var PRIORITY_SPEAKING : Bool;
														};
														dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
														dynamic function toJSON():Float;
														dynamic function valueOf():Float;
													};
													dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
													dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
													dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
													dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
														var SPEAKING : Bool;
														var SOUNDSHARE : Bool;
														var PRIORITY_SPEAKING : Bool;
													};
													dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
													dynamic function toJSON():Float;
													dynamic function valueOf():Float;
												};
												dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
												dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
												dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
												dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
													var SPEAKING : Bool;
													var SOUNDSHARE : Bool;
													var PRIORITY_SPEAKING : Bool;
												};
												dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
												dynamic function toJSON():Float;
												dynamic function valueOf():Float;
											};
											dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
											dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
											dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
											dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
												var SPEAKING : Bool;
												var SOUNDSHARE : Bool;
												var PRIORITY_SPEAKING : Bool;
											};
											dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
											dynamic function toJSON():Float;
											dynamic function valueOf():Float;
										};
										dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
										dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
										dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
										dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
											var SPEAKING : Bool;
											var SOUNDSHARE : Bool;
											var PRIORITY_SPEAKING : Bool;
										};
										dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
										dynamic function toJSON():Float;
										dynamic function valueOf():Float;
									};
									dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
									dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
									dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
									dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
										var SPEAKING : Bool;
										var SOUNDSHARE : Bool;
										var PRIORITY_SPEAKING : Bool;
									};
									dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
									dynamic function toJSON():Float;
									dynamic function valueOf():Float;
								};
								dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
								dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
								dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
								dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
									var SPEAKING : Bool;
									var SOUNDSHARE : Bool;
									var PRIORITY_SPEAKING : Bool;
								};
								dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
								dynamic function toJSON():Float;
								dynamic function valueOf():Float;
							};
							dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
							dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
							dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
							dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
								var SPEAKING : Bool;
								var SOUNDSHARE : Bool;
								var PRIORITY_SPEAKING : Bool;
							};
							dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
							dynamic function toJSON():Float;
							dynamic function valueOf():Float;
						};
						dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
						dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
						dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
						dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
							var SPEAKING : Bool;
							var SOUNDSHARE : Bool;
							var PRIORITY_SPEAKING : Bool;
						};
						dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
						dynamic function toJSON():Float;
						dynamic function valueOf():Float;
					};
					dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
					dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
					dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
					dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
						var SPEAKING : Bool;
						var SOUNDSHARE : Bool;
						var PRIORITY_SPEAKING : Bool;
					};
					dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
					dynamic function toJSON():Float;
					dynamic function valueOf():Float;
				};
				dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
				dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
				dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
				dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
					var SPEAKING : Bool;
					var SOUNDSHARE : Bool;
					var PRIORITY_SPEAKING : Bool;
				};
				dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
				dynamic function toJSON():Float;
				dynamic function valueOf():Float;
			};
			dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
			dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
			dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
			dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
				var SPEAKING : Bool;
				var SOUNDSHARE : Bool;
				var PRIORITY_SPEAKING : Bool;
			};
			dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
			dynamic function toJSON():Float;
			dynamic function valueOf():Float;
		};
		dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool;
		dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
		dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>;
		dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
			var SPEAKING : Bool;
			var SOUNDSHARE : Bool;
			var PRIORITY_SPEAKING : Bool;
		};
		dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>;
		dynamic function toJSON():Float;
		dynamic function valueOf():Float;
	}>;
	var guildMemberUpdate : ts.Tuple2<ts.AnyOf2<GuildMember, PartialGuildMember>, GuildMember>;
	var guildUpdate : ts.Tuple2<Guild, Guild>;
	var inviteCreate : ts.Tuple1<Invite>;
	var inviteDelete : ts.Tuple1<Invite>;
	var message : ts.Tuple1<Message>;
	var messageDelete : ts.Tuple1<ts.AnyOf2<Message, PartialMessage>>;
	var messageReactionRemoveAll : ts.Tuple1<ts.AnyOf2<Message, PartialMessage>>;
	var messageReactionRemoveEmoji : ts.Tuple1<MessageReaction>;
	var messageDeleteBulk : ts.Tuple1<Collection<String, ts.AnyOf2<Message, PartialMessage>>>;
	var messageReactionAdd : ts.Tuple2<MessageReaction, ts.AnyOf2<User, PartialUser>>;
	var messageReactionRemove : ts.Tuple2<MessageReaction, ts.AnyOf2<User, PartialUser>>;
	var messageUpdate : ts.Tuple2<ts.AnyOf2<Message, PartialMessage>, ts.AnyOf2<Message, PartialMessage>>;
	var presenceUpdate : ts.Tuple2<Null<Presence>, Presence>;
	var rateLimit : ts.Tuple1<RateLimitData>;
	var ready : std.Array<Any>;
	var invalidated : std.Array<Any>;
	var roleCreate : ts.Tuple1<Role>;
	var roleDelete : ts.Tuple1<Role>;
	var roleUpdate : ts.Tuple2<Role, Role>;
	var typingStart : ts.Tuple2<ts.AnyOf2<Channel, PartialDMChannel>, ts.AnyOf2<User, PartialUser>>;
	var userUpdate : ts.Tuple2<ts.AnyOf2<User, PartialUser>, User>;
	var voiceStateUpdate : ts.Tuple2<VoiceState, VoiceState>;
	var webhookUpdate : ts.Tuple1<TextChannel>;
	var shardDisconnect : ts.Tuple2<CloseEvent, Float>;
	var shardError : ts.Tuple2<js.lib.Error, Float>;
	var shardReady : ts.Tuple2<Float, Null<js.lib.Set<String>>>;
	var shardReconnecting : ts.Tuple1<Float>;
	var shardResume : ts.Tuple2<Float, Float>;
};