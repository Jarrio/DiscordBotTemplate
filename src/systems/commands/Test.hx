package systems.commands;

import discord_builder.BaseCommandInteraction;
import components.Command;

class Test extends CommandBase {
	function run(command:Command, interaction:BaseCommandInteraction) {
		switch (command.content) {
			case Test(category, data): 
				switch(category) {
					case 0:
						if (data == null) {
							interaction.reply("No data");
						} else {
							interaction.reply('Hey you sent stuff: $data');
						}
					case 1:
						interaction.reply('VIP member');
					default: 
						interaction.reply("No category");
				}
				
			default:
		}
	}

	function get_name():String {
		return 'test';
	}
}