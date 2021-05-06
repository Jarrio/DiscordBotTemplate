package systems;

import discord_js.Message;
import components.Command;
import ecs.System;
abstract class CommandBase extends System {
	@:fastFamily var commands:{command:Command, message:Message};
	override function update(_) {
		if (!Main.connected) {
			return;
		}
		iterate(commands, entity -> {
			if (command.name == this.name) {
				this.run(command, message);
				this.commands.remove(entity);
			}
		});
	}

	abstract function run(command:Command, message:Message):Void;

	var name(get, never):String;
	abstract function get_name():String;
}