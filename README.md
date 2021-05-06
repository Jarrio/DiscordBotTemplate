# Discord Bot Template
A basic and probably over engineered approach to creating a discord bot in haxe. This project utilises aidan's ECS which can be found at https://github.com/Aidan63/ecs.
This comes with the discord externs, the externs were created with dts2hx and I made some modifications where required to make things work better.
If you want to upgrade the discord externs follow the process outlined in the dts2hx repo: https://github.com/haxiomic/dts2hx 

## Setup
1) clone the repo
2) cd into the repo and then run the following:
```
haxelib install hxnodejs
haxelib git aidan-ecs https://github.com/Aidan63/ecs
```
3) cd into the `bin` directory and then run:
```
npm install
```
4) Create a file in the `bin` directory called `config.json` and put the following in it:
```json
{
	"project_name": "Hi Bot",
	"prefixes": ["!", "+"],
	"discord_api_key": "TOKEN_HERE"
}
```
You can use this file to store other config settings by modifying the typedef found in the `Main.hx` file

5) Go to (https://discord.com/developers/) to obtain your API token and further bot setup instructions
6) Add the bot to a server
7) Compile! 
8) Run the bot using node: `node main.js` or hit the debug button in vscode
9) In your discord server send the command `!hi` and the bot should reply :)

## Usage
Usage is simple, a system represents a command and most of the initial parsing work is done in `CommandBase` all you need to do is just implement your commands.

### Adding a Command
Head to the `Main.hx` and you should see a line that says: 
```hx
universe.setSystems(Hi);
```
To add more commands, simply append it to the universe making sure to **not** use wildcard imports.
```hx
universe.setSystems(Hi, Help); //Where Help is another command that extends CommandBase
```

### An Example Command
```hx
package systems.commands;

import components.Command;

class Hi extends CommandBase {
	function run(command:Command, message:Message) {
		message.reply("Hey there");
	}

	function get_name():String {
		return '!hi';
	}
}

```
### Core Functions
```get_name()```

Is where you define your command name, this is what your users will type in discord to trigger the command - it is required. 

```run(command:Command, message:Message)```

Is what will be called when a message that matches the commands name is sent, treat this is the init point of the command, `Message` represents a discord message and the API, documentation and usage can be found https://discord.js.org/#/docs/main/stable/class/Message. 
`Command` is just an object with 2 fields: 
	- `name`: The command name (`!hi`)
	- `content`: The content that is sent a long with the command, so if a user sent `!hi 123 456 789` content will be trimmed and parsed as:
	```hx
	{
		name: "hi",
		content: "123 456 789"
	}
	```
