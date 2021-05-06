package discord_js;

@:jsRequire("discord.js", "ClientVoiceManager") extern class ClientVoiceManager {
	function new(client:Client);
	public final client : Client;
	public var connections : Collection<String, VoiceConnection>;
	public var broadcasts : Array<VoiceBroadcast>;
	private function joinChannel(channel:VoiceChannel):js.lib.Promise<VoiceConnection>;
	public function createBroadcast():VoiceBroadcast;
	static var prototype : ClientVoiceManager;
}