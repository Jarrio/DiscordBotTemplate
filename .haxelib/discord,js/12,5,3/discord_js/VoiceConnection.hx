package discord_js;

@:jsRequire("discord.js", "VoiceConnection") extern class VoiceConnection {
	function new(voiceManager:ClientVoiceManager, channel:VoiceChannel);
	private var authentication : Dynamic;
	private var sockets : Dynamic;
	private var ssrcMap : js.lib.Map<Float, Bool>;
	private var _speaking : js.lib.Map<String, {
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
	private function _disconnect():Void;
	private function authenticate():Void;
	private function authenticateFailed(reason:String):Void;
	private function checkAuthenticated():Void;
	private function cleanup():Void;
	private function connect():Void;
	private function onReady(data:Dynamic):Void;
	private function onSessionDescription(mode:String, secret:String):Void;
	private function onSpeaking(data:Dynamic):Void;
	private function reconnect(token:String, endpoint:String):Void;
	private function sendVoiceStateUpdate(options:Dynamic):js.lib.Promise<Shard>;
	private function setSessionID(sessionID:String):Void;
	private function setTokenAndEndpoint(token:String, endpoint:String):Void;
	private function updateChannel(channel:VoiceChannel):Void;
	public var channel : VoiceChannel;
	public final client : Client;
	public final dispatcher : StreamDispatcher;
	public var player : Dynamic;
	public var receiver : VoiceReceiver;
	public var speaking : {
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
	public var status : Float;
	public final voice : Null<VoiceState>;
	public var voiceManager : ClientVoiceManager;
	public function disconnect():Void;
	public function play(input:Dynamic, ?options:StreamOptions):StreamDispatcher;
	public function setSpeaking(value:BitFieldResolvable<SpeakingString>):Void;
	@:overload(function(event:String, listener:(message:String) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(user:User, speaking:{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function any(bit:BitFieldResolvable<Dynamic>):Bool; dynamic function equals(bit:BitFieldResolvable<Dynamic>):Bool; dynamic function freeze():{ var bitfield : Dynamic; dynamic function add(bits:haxe.extern.Rest<Any>):Dynamic; dynamic function any(bit:Dynamic):Dynamic; dynamic function equals(bit:Dynamic):Dynamic; dynamic function freeze():Dynamic; dynamic function has(bit:Dynamic):Dynamic; dynamic function missing(bits:Dynamic, hasParam:haxe.extern.Rest<Any>):Dynamic; dynamic function remove(bits:haxe.extern.Rest<Any>):Dynamic; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):Dynamic; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic; dynamic function toJSON():Dynamic; dynamic function valueOf():Dynamic; }; dynamic function has(bit:BitFieldResolvable<Dynamic>):Bool; dynamic function missing(bits:BitFieldResolvable<Dynamic>, hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function remove(bits:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Dynamic; var SOUNDSHARE : Dynamic; var PRIORITY_SPEAKING : Dynamic; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(warning:ts.AnyOf2<String, js.lib.Error>) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):VoiceConnection { })
	public function on(event:String, listener:() -> Void):VoiceConnection;
	@:overload(function(event:String, listener:(message:String) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(user:User, speaking:{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SpeakingString>; dynamic function any(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function equals(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function freeze():{ var bitfield : Float; dynamic function add(bits:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function any(bit:BitFieldResolvable<Dynamic>):Bool; dynamic function equals(bit:BitFieldResolvable<Dynamic>):Bool; dynamic function freeze():{ var bitfield : Dynamic; dynamic function add(bits:haxe.extern.Rest<Any>):Dynamic; dynamic function any(bit:Dynamic):Dynamic; dynamic function equals(bit:Dynamic):Dynamic; dynamic function freeze():Dynamic; dynamic function has(bit:Dynamic):Dynamic; dynamic function missing(bits:Dynamic, hasParam:haxe.extern.Rest<Any>):Dynamic; dynamic function remove(bits:haxe.extern.Rest<Any>):Dynamic; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):Dynamic; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic; dynamic function toJSON():Dynamic; dynamic function valueOf():Dynamic; }; dynamic function has(bit:BitFieldResolvable<Dynamic>):Bool; dynamic function missing(bits:BitFieldResolvable<Dynamic>, hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function remove(bits:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Dynamic; var SOUNDSHARE : Dynamic; var PRIORITY_SPEAKING : Dynamic; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Dynamic<Dynamic>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<Dynamic>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }; dynamic function has(bit:BitFieldResolvable<SpeakingString>):Bool; dynamic function missing(bits:BitFieldResolvable<SpeakingString>, hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function remove(bits:haxe.extern.Rest<BitFieldResolvable<SpeakingString>>):BitField<SpeakingString>; dynamic function serialize(hasParam:haxe.extern.Rest<Any>):{ var SPEAKING : Bool; var SOUNDSHARE : Bool; var PRIORITY_SPEAKING : Bool; }; dynamic function toArray(hasParam:haxe.extern.Rest<Any>):Array<SpeakingString>; dynamic function toJSON():Float; dynamic function valueOf():Float; }) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(warning:ts.AnyOf2<String, js.lib.Error>) -> Void):VoiceConnection { })
	@:overload(function(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):VoiceConnection { })
	public function once(event:String, listener:() -> Void):VoiceConnection;
	static var prototype : VoiceConnection;
}