package systems.commands;

import discord_builder.BaseCommandInteraction;
import components.Command;

class Boop extends CommandBase {
	function run(command:Command, interaction:BaseCommandInteraction) {
		switch (command.content) {
			case Boop(user): 
				interaction.reply('BOOP <@${user.id}>');
			default:
		}
	}

	function get_name():String {
		return 'boop';
	}
}