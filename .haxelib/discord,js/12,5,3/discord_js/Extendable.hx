package discord_js;

typedef Extendable = {
	var GuildEmoji : {
		var prototype : GuildEmoji;
	};
	var DMChannel : {
		var prototype : DMChannel;
	};
	var TextChannel : {
		var prototype : TextChannel;
	};
	var VoiceChannel : {
		var prototype : VoiceChannel;
	};
	var CategoryChannel : {
		var prototype : CategoryChannel;
	};
	var NewsChannel : {
		var prototype : NewsChannel;
	};
	var StoreChannel : {
		var prototype : StoreChannel;
	};
	var GuildMember : {
		var prototype : GuildMember;
	};
	var Guild : {
		var prototype : Guild;
	};
	var Message : {
		var prototype : Message;
	};
	var MessageReaction : {
		var prototype : MessageReaction;
	};
	var Presence : {
		var prototype : Presence;
	};
	var VoiceState : {
		var prototype : VoiceState;
	};
	var Role : {
		var prototype : Role;
		function comparePositions(role1:Role, role2:Role):Float;
	};
	var User : {
		var prototype : User;
	};
};