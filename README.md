# Discord Bot Template
A basic and probably over engineered approach to creating a discord bot in haxe. This project depends on aidan's ecs but is easy to swap out should you want to.
The structure of this project is simply focused on making a discord bot, really easy, where the logic is simple to follow. Make your command, add it to the Main file, everything is contained

**Requires**:
- [Haxe 4.2+](https://haxe.org/download)
- [Aidan's ECS](https://github.com/Aidan63/ecs)

Example Project:
- [`Haxebot`](https://github.com/Jarrio/Haxebot)

## Setup
1) Clone the repo
```
git --recursive clone https://github.com/Jarrio/DiscordBotTemplate
```
2) cd into the `bin` directory and then run:
```
npm install
```
3) Get your [`API token`](https://discord.com/developers/) and read here for further bot setup instructions
4) Go to `./bin/config/keys.json` and add your discord api keys in here
5) Add the bot to a server
6) Compile! 
7) Run the bot using: `node main.js` or hit the debug button in vscode
8) In your discord server send the command `/hi` or `/boop` and the bot should reply :)

![gif](https://user-images.githubusercontent.com/748557/117300860-e74c3200-ae71-11eb-8eec-d5953319ec02.gif)

*<sup>gif is old, it shows a text command but new setup actually works with slash commands</sup>*
## Usage
Usage is simple, a system represents a command and most of the initial parsing work is done in `CommandBase` all you need to do is just implement your commands.

### Adding a Command
First go to `src/components/Command.hx` and you should see an enum called `CommandOptions`. This is what handles the typing for the discord parameters and filtering the commands, simply add an enum to the list based on the config spec.

```hx
enum CommandOptions {
	Hi; //A basic command, has no parameters
	Boop(user:User); //Expects the user to pass a discord user object as a parameter
	Test(category:Float, data:String); //Takes 2 parameters from the user, a number and a string
}
```
After this, go to the `./bin/config/commands.json` and add your additional commands in here. The typedef structure can be found in
`Main.hx` called `TCommands`

An example of a `commands.json` file will look like: 
```hx
[
	{
		"name": "hi",
		"description": "Say hi to the bot"
	},
	{
		"name": "boop",
		"description": "boops a user",
		"params": [
			{
				"name": "user",
				"type": "user",
				"description": "The user to boop",
				"required": true
			}
		]
	},
	{
		"name": "test",
		"description": "tests user input",
		"params": [
			{
				"name": "type",
				"type": "number",
				"description": "Category of test",
				"required": true
			},
			{
				"name": "topic",
				"type": "string",
				"description": "additional condition",
				"required": false
			}
		]
	}
]
```
This sets up 3 commands and should be fairly self explanatory with the enum definitions above.
- `name`: The parent object `name` is what comes directly after the slash. `/hi`, `/boop`, or `/test`
- `description`: This will show a brief description in the command list within discord about the command
- `params`: It has the same structure, except now `name` and `description` describe the parameter definition

Then head to the `Main.hx` and you should see the following:
```hx
universe = Universe.create({
	entities: 1000,
	phases: [
		{
			name: 'commands',
			systems: [Hi, Boop, Test]
		}
	]
});
```
systems is an array that takes in the module name of a command.

### A Basic Command Example
```hx
package systems.commands;

import components.Command;

class Hi extends CommandBase {
	function run(command:Command, interaction:BaseCommandInteraction) {
		message.reply("Hey there");
	}

	function get_name():String {
		return 'hi';
	}
}

```
### With Command Parameters
```hx
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
```
### Core Functions
```get_name()```

Is where you define your command name, this is what your users will type in discord to trigger the command - it is required. 

```function run(command:Command, interaction:BaseCommandInteraction)```

Is what will be called when a message that matches the commands has been sent, treat this as the init point of the command. 
Click [`Message`](https://discord.js.org/#/docs/main/stable/class/Message) to see the official API, documentation and usage. 

`Command` is just an object with 2 fields:
 
- `name`: The command name (`/hi`)
- `content`: Content encapsulates any parameters parsed to the bot, it will be organised into an enum constructor
```hx
{
	name: "hi",
	content: Hi //represented by a haxe enum
}
``` 

### Update Loop
If you need to add some code to the update loop, just override it but remember to call `super` otherwise the base logic wont run
```hx
override function update(_) {
	// code checks here
	super.update(_);
	// ... or here
}
```
