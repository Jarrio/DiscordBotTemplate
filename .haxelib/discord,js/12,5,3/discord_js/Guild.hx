package discord_js;

@:jsRequire("discord.js", "Guild") extern class Guild extends Base {
	function new(client:Client, data:Dynamic);
	private function _sortedRoles():Collection<String, Role>;
	private function _sortedChannels(channel:Channel):Collection<String, GuildChannel>;
	private function _memberSpeakUpdate(user:String, speaking:Bool):Void;
	public final afkChannel : Null<VoiceChannel>;
	public var afkChannelID : Null<String>;
	public var afkTimeout : Float;
	public var applicationID : Null<String>;
	public var approximateMemberCount : Null<Float>;
	public var approximatePresenceCount : Null<Float>;
	public var available : Bool;
	public var banner : Null<String>;
	public var channels : GuildChannelManager;
	public final createdAt : js.lib.Date;
	public final createdTimestamp : Float;
	public var defaultMessageNotifications : ts.AnyOf2<Float, String>;
	public var deleted : Bool;
	public var description : Null<String>;
	public var discoverySplash : Null<String>;
	public var embedChannel : Null<GuildChannel>;
	public var embedChannelID : Null<String>;
	public var embedEnabled : Bool;
	public var emojis : GuildEmojiManager;
	public var explicitContentFilter : ExplicitContentFilterLevel;
	public var features : Array<GuildFeatures>;
	public var icon : Null<String>;
	public var id : String;
	public final joinedAt : js.lib.Date;
	public var joinedTimestamp : Float;
	public var large : Bool;
	public var maximumMembers : Null<Float>;
	public var maximumPresences : Null<Float>;
	public final me : Null<GuildMember>;
	public var memberCount : Float;
	public var members : GuildMemberManager;
	public var mfaLevel : Float;
	public var name : String;
	public final nameAcronym : String;
	public final owner : Null<GuildMember>;
	public var ownerID : String;
	public final partnered : Bool;
	public var preferredLocale : String;
	public var premiumSubscriptionCount : Null<Float>;
	public var premiumTier : Float;
	public var presences : PresenceManager;
	public final publicUpdatesChannel : Null<TextChannel>;
	public var publicUpdatesChannelID : Null<String>;
	public var region : String;
	public var roles : RoleManager;
	public final rulesChannel : Null<TextChannel>;
	public var rulesChannelID : Null<String>;
	public final shard : WebSocketShard;
	public var shardID : Float;
	public var splash : Null<String>;
	public final systemChannel : Null<TextChannel>;
	public var systemChannelFlags : {
		var bitfield : Float;
		dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
		dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
		dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
		dynamic function freeze():{
			var bitfield : Float;
			dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
			dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
			dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
			dynamic function freeze():{
				var bitfield : Float;
				dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
				dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
				dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
				dynamic function freeze():{
					var bitfield : Float;
					dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
					dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
					dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
					dynamic function freeze():{
						var bitfield : Float;
						dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
						dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
						dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
						dynamic function freeze():{
							var bitfield : Float;
							dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
							dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
							dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
							dynamic function freeze():{
								var bitfield : Float;
								dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
								dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
								dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
								dynamic function freeze():{
									var bitfield : Float;
									dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
									dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
									dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
									dynamic function freeze():{
										var bitfield : Float;
										dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
										dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
										dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
										dynamic function freeze():{
											var bitfield : Float;
											dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
											dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
											dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
											dynamic function freeze():{
												var bitfield : Float;
												dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
												dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
												dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
												dynamic function freeze():{
													var bitfield : Float;
													dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
													dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
													dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
													dynamic function freeze():{
														var bitfield : Float;
														dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
														dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
														dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
														dynamic function freeze():{
															var bitfield : Float;
															dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
															dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
															dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
															dynamic function freeze():{
																var bitfield : Float;
																dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																dynamic function freeze():{
																	var bitfield : Float;
																	dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																	dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																	dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																	dynamic function freeze():{
																		var bitfield : Float;
																		dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																		dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																		dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																		dynamic function freeze():{
																			var bitfield : Float;
																			dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																			dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																			dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																			dynamic function freeze():{
																				var bitfield : Float;
																				dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																				dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																				dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																				dynamic function freeze():{
																					var bitfield : Float;
																					dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																					dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																					dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																					dynamic function freeze():{
																						var bitfield : Float;
																						dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																						dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																						dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																						dynamic function freeze():{
																							var bitfield : Float;
																							dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																							dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																							dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																							dynamic function freeze():{
																								var bitfield : Float;
																								dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SystemChannelFlagsString>;
																								dynamic function any(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																								dynamic function equals(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
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
																										var WELCOME_MESSAGE_DISABLED : Dynamic;
																										var BOOST_MESSAGE_DISABLED : Dynamic;
																									};
																									dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>;
																									dynamic function toJSON():Float;
																									dynamic function valueOf():Float;
																								};
																								dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																								dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																								dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SystemChannelFlagsString>;
																								dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																									var WELCOME_MESSAGE_DISABLED : Bool;
																									var BOOST_MESSAGE_DISABLED : Bool;
																								};
																								dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																								dynamic function toJSON():Float;
																								dynamic function valueOf():Float;
																							};
																							dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																							dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																							dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																							dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																								var WELCOME_MESSAGE_DISABLED : Bool;
																								var BOOST_MESSAGE_DISABLED : Bool;
																							};
																							dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																							dynamic function toJSON():Float;
																							dynamic function valueOf():Float;
																						};
																						dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																						dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																						dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																						dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																							var WELCOME_MESSAGE_DISABLED : Bool;
																							var BOOST_MESSAGE_DISABLED : Bool;
																						};
																						dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																						dynamic function toJSON():Float;
																						dynamic function valueOf():Float;
																					};
																					dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																					dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																					dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																					dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																						var WELCOME_MESSAGE_DISABLED : Bool;
																						var BOOST_MESSAGE_DISABLED : Bool;
																					};
																					dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																					dynamic function toJSON():Float;
																					dynamic function valueOf():Float;
																				};
																				dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																				dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																				dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																				dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																					var WELCOME_MESSAGE_DISABLED : Bool;
																					var BOOST_MESSAGE_DISABLED : Bool;
																				};
																				dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																				dynamic function toJSON():Float;
																				dynamic function valueOf():Float;
																			};
																			dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																			dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																			dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																			dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																				var WELCOME_MESSAGE_DISABLED : Bool;
																				var BOOST_MESSAGE_DISABLED : Bool;
																			};
																			dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																			dynamic function toJSON():Float;
																			dynamic function valueOf():Float;
																		};
																		dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																		dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																		dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																		dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																			var WELCOME_MESSAGE_DISABLED : Bool;
																			var BOOST_MESSAGE_DISABLED : Bool;
																		};
																		dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																		dynamic function toJSON():Float;
																		dynamic function valueOf():Float;
																	};
																	dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																	dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																	dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																	dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																		var WELCOME_MESSAGE_DISABLED : Bool;
																		var BOOST_MESSAGE_DISABLED : Bool;
																	};
																	dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																	dynamic function toJSON():Float;
																	dynamic function valueOf():Float;
																};
																dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
																dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
																dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																	var WELCOME_MESSAGE_DISABLED : Bool;
																	var BOOST_MESSAGE_DISABLED : Bool;
																};
																dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
																dynamic function toJSON():Float;
																dynamic function valueOf():Float;
															};
															dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
															dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
															dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
															dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
																var WELCOME_MESSAGE_DISABLED : Bool;
																var BOOST_MESSAGE_DISABLED : Bool;
															};
															dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
															dynamic function toJSON():Float;
															dynamic function valueOf():Float;
														};
														dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
														dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
														dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
														dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
															var WELCOME_MESSAGE_DISABLED : Bool;
															var BOOST_MESSAGE_DISABLED : Bool;
														};
														dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
														dynamic function toJSON():Float;
														dynamic function valueOf():Float;
													};
													dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
													dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
													dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
													dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
														var WELCOME_MESSAGE_DISABLED : Bool;
														var BOOST_MESSAGE_DISABLED : Bool;
													};
													dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
													dynamic function toJSON():Float;
													dynamic function valueOf():Float;
												};
												dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
												dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
												dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
												dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
													var WELCOME_MESSAGE_DISABLED : Bool;
													var BOOST_MESSAGE_DISABLED : Bool;
												};
												dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
												dynamic function toJSON():Float;
												dynamic function valueOf():Float;
											};
											dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
											dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
											dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
											dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
												var WELCOME_MESSAGE_DISABLED : Bool;
												var BOOST_MESSAGE_DISABLED : Bool;
											};
											dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
											dynamic function toJSON():Float;
											dynamic function valueOf():Float;
										};
										dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
										dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
										dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
										dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
											var WELCOME_MESSAGE_DISABLED : Bool;
											var BOOST_MESSAGE_DISABLED : Bool;
										};
										dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
										dynamic function toJSON():Float;
										dynamic function valueOf():Float;
									};
									dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
									dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
									dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
									dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
										var WELCOME_MESSAGE_DISABLED : Bool;
										var BOOST_MESSAGE_DISABLED : Bool;
									};
									dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
									dynamic function toJSON():Float;
									dynamic function valueOf():Float;
								};
								dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
								dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
								dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
								dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
									var WELCOME_MESSAGE_DISABLED : Bool;
									var BOOST_MESSAGE_DISABLED : Bool;
								};
								dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
								dynamic function toJSON():Float;
								dynamic function valueOf():Float;
							};
							dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
							dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
							dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
							dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
								var WELCOME_MESSAGE_DISABLED : Bool;
								var BOOST_MESSAGE_DISABLED : Bool;
							};
							dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
							dynamic function toJSON():Float;
							dynamic function valueOf():Float;
						};
						dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
						dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
						dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
						dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
							var WELCOME_MESSAGE_DISABLED : Bool;
							var BOOST_MESSAGE_DISABLED : Bool;
						};
						dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
						dynamic function toJSON():Float;
						dynamic function valueOf():Float;
					};
					dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
					dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
					dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
					dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
						var WELCOME_MESSAGE_DISABLED : Bool;
						var BOOST_MESSAGE_DISABLED : Bool;
					};
					dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
					dynamic function toJSON():Float;
					dynamic function valueOf():Float;
				};
				dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
				dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
				dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
				dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
					var WELCOME_MESSAGE_DISABLED : Bool;
					var BOOST_MESSAGE_DISABLED : Bool;
				};
				dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
				dynamic function toJSON():Float;
				dynamic function valueOf():Float;
			};
			dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
			dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
			dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
			dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
				var WELCOME_MESSAGE_DISABLED : Bool;
				var BOOST_MESSAGE_DISABLED : Bool;
			};
			dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
			dynamic function toJSON():Float;
			dynamic function valueOf():Float;
		};
		dynamic function has(bit:BitFieldResolvable<SystemChannelFlagsString>):Bool;
		dynamic function missing(bits:BitFieldResolvable<SystemChannelFlagsString>, hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
		dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SystemChannelFlagsString>>):BitField<SystemChannelFlagsString>;
		dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{
			var WELCOME_MESSAGE_DISABLED : Bool;
			var BOOST_MESSAGE_DISABLED : Bool;
		};
		dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SystemChannelFlagsString>;
		dynamic function toJSON():Float;
		dynamic function valueOf():Float;
	};
	public var systemChannelID : Null<String>;
	public var vanityURLCode : Null<String>;
	public var vanityURLUses : Null<Float>;
	public var verificationLevel : VerificationLevel;
	public final verified : Bool;
	public final voice : Null<VoiceState>;
	public final voiceStates : VoiceStateManager;
	public final widgetChannel : Null<TextChannel>;
	public var widgetChannelID : Null<String>;
	public var widgetEnabled : Null<Bool>;
	public function addMember(user:UserResolvable, options:AddGuildMemberOptions):js.lib.Promise<GuildMember>;
	public function bannerURL(?options:ImageURLOptions):Null<String>;
	public function createIntegration(data:IntegrationData, ?reason:String):js.lib.Promise<Guild>;
	public function createTemplate(name:String, ?description:String):js.lib.Promise<GuildTemplate>;
	public function delete():js.lib.Promise<Guild>;
	public function discoverySplashURL(?options:ImageURLOptions):Null<String>;
	public function edit(data:GuildEditData, ?reason:String):js.lib.Promise<Guild>;
	public function equals(guild:Guild):Bool;
	public function fetch():js.lib.Promise<Guild>;
	public function fetchAuditLogs(?options:GuildAuditLogsFetchOptions):js.lib.Promise<GuildAuditLogs>;
	public function fetchBan(user:UserResolvable):js.lib.Promise<{
		var user : User;
		var reason : String;
	}>;
	public function fetchBans():js.lib.Promise<Collection<String, {
		var user : User;
		var reason : String;
	}>>;
	public function fetchEmbed():js.lib.Promise<GuildWidget>;
	public function fetchIntegrations(?options:FetchIntegrationsOptions):js.lib.Promise<Collection<String, Integration>>;
	public function fetchInvites():js.lib.Promise<Collection<String, Invite>>;
	public function fetchPreview():js.lib.Promise<GuildPreview>;
	public function fetchTemplates():js.lib.Promise<Collection<String, GuildTemplate>>;
	public function fetchVanityCode():js.lib.Promise<String>;
	public function fetchVanityData():js.lib.Promise<{
		var code : String;
		var uses : Float;
	}>;
	public function fetchVoiceRegions():js.lib.Promise<Collection<String, VoiceRegion>>;
	public function fetchWebhooks():js.lib.Promise<Collection<String, Webhook>>;
	public function fetchWidget():js.lib.Promise<GuildWidget>;
	public function iconURL(?options:ImageURLOptions & { @:optional @:native("dynamic") var dynamic_ : Bool; }):Null<String>;
	public function leave():js.lib.Promise<Guild>;
	public function member(user:UserResolvable):Null<GuildMember>;
	public function setAFKChannel(afkChannel:Null<ChannelResolvable>, ?reason:String):js.lib.Promise<Guild>;
	public function setAFKTimeout(afkTimeout:Float, ?reason:String):js.lib.Promise<Guild>;
	public function setBanner(banner:Dynamic, ?reason:String):js.lib.Promise<Guild>;
	public function setChannelPositions(channelPositions:haxe.ds.ReadOnlyArray<ChannelPosition>):js.lib.Promise<Guild>;
	public function setDefaultMessageNotifications(defaultMessageNotifications:ts.AnyOf2<Float, String>, ?reason:String):js.lib.Promise<Guild>;
	public function setDiscoverySplash(discoverySplash:Dynamic, ?reason:String):js.lib.Promise<Guild>;
	public function setEmbed(embed:GuildWidgetData, ?reason:String):js.lib.Promise<Guild>;
	public function setExplicitContentFilter(explicitContentFilter:ts.AnyOf2<Float, String>, ?reason:String):js.lib.Promise<Guild>;
	public function setIcon(icon:Dynamic, ?reason:String):js.lib.Promise<Guild>;
	public function setName(name:String, ?reason:String):js.lib.Promise<Guild>;
	public function setOwner(owner:UserResolvable, ?reason:String):js.lib.Promise<Guild>;
	public function setPreferredLocale(preferredLocale:String, ?reason:String):js.lib.Promise<Guild>;
	public function setPublicUpdatesChannel(publicUpdatesChannel:Null<ChannelResolvable>, ?reason:String):js.lib.Promise<Guild>;
	public function setRegion(region:String, ?reason:String):js.lib.Promise<Guild>;
	public function setRolePositions(rolePositions:haxe.ds.ReadOnlyArray<RolePosition>):js.lib.Promise<Guild>;
	public function setRulesChannel(rulesChannel:Null<ChannelResolvable>, ?reason:String):js.lib.Promise<Guild>;
	public function setSplash(splash:Dynamic, ?reason:String):js.lib.Promise<Guild>;
	public function setSystemChannel(systemChannel:Null<ChannelResolvable>, ?reason:String):js.lib.Promise<Guild>;
	public function setSystemChannelFlags(systemChannelFlags:BitFieldResolvable<SystemChannelFlagsString>, ?reason:String):js.lib.Promise<Guild>;
	public function setVerificationLevel(verificationLevel:ts.AnyOf2<Float, String>, ?reason:String):js.lib.Promise<Guild>;
	public function setWidget(widget:GuildWidgetData, ?reason:String):js.lib.Promise<Guild>;
	public function splashURL(?options:ImageURLOptions):Null<String>;
	public function toJSON():Dynamic;
	/**
		Returns a string representation of an object.
	**/
	public function toString():String;
	static var prototype : Guild;
}