# Discord Bot Template
A basic and probably over engineered approach to creating a discord bot in haxe. This project depends on aidan's ecs but is easy to swap out should you want to.
I also bundle the discord externs, they were created with dts2hx and I made some very basic modifications to types here and there.
If you want to upgrade the discord externs follow the process outlined in the dts2hx repo linked below.

## >-------BREAKING CHANGE NOTICE--------<
The new update to this library moves the framework completely to the new discord commands API. Take note of the changed code base and command instantiation.
**DOCS ARE UPDATED TO INCLUDE NEW WORKFLOW**

**THINGS MAY CHANGE**

Will be experimenting with some stuff but this is just to get a preliminary release of the new API done and dusted.


**Requires**:
- [Haxe 4.2+](https://haxe.org/download)
- [Aidan's ECS](https://github.com/Aidan63/ecs)

Optional:
- [DTS2HX](https://github.com/haxiomic/dts2hx)

Example Project:
- [`Haxebot`](https://github.com/Jarrio/Haxebot)

## Setup
1) clone the repo
2) cd into the repo and then run the following:
```
haxelib install hxnodejs
haxelib git aidan-ecs https://github.com/Aidan63/ecs
```
*Note: `hxnodejs` is not mandatory, it is just used to access sys stuff. For this example it is required but easily removed should you not need it*

3) cd into the `bin` directory and then run:
```
npm install
```
4) Create a file in the `bin` directory called `config.json` and put the following in it:
```json
{
	"project_name": "Hi Bot",
	"discord_token": "TOKEN_HERE",
	"client_id": "CLIENT ID",
	"server_id": "DEVELOPER SERVER ID",
	"commands": []
}
```
*Note: You can use this file to store other config settings by modifying the typedef found in the `Main.hx` file*

5) Get your [`API token`](https://discord.com/developers/) and read here for further bot setup instructions
6) Add the bot to a server
7) Compile! 
8) Run the bot using: `node main.js` or hit the debug button in vscode
9) In your discord server send the command `/hi` or `/boop` and the bot should reply :)

![gif](https://user-images.githubusercontent.com/748557/117300860-e74c3200-ae71-11eb-8eec-d5953319ec02.gif)

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
With the new system to make the bot making experience more focused on developing the bot, I have opted to trial setting up the command spec via the `config.json` file. This lets me automate the majority of the command setup process for the bot maker and keep code tidy. If you happen to forget the structure to define, you can find the definition of the json structure in `Main.hx` named `TCommands`.

Complete `config.json` example:
```hx
{
	"project_name": "Hi Bot",
	"discord_token": "TOKEN_HERE",
	"client_id": "CLIENT ID",
	"server_id": "DEVELOPER SERVER ID"
	"commands": [
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
}
```
This sets up 3 commands and should be fairly self explanatory with the enum definitions above.
- `name`: The parent object `name` is what comes directly after the slash. `/hi`, `/boop`, or `/test`
- `description`: This will show a brief description in the command list within discord about the command
- `params`: It has the same structure, except now `name` and `description` describe the parameter definition

Then head to the `Main.hx` and you should see a line that says: 
```hx
universe.setSystems(Hi);
```
To add more commands, simply append it to the universe. When adding the component to the file, directly import it and make sure to **not** use wildcard imports.
```hx
universe.setSystems(Hi, Help, Test); //Where Help is another command that extends CommandBase
```

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
