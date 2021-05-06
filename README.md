# Discord Bot Template
A basic and probably over engineered approach to creating a discord bot in haxe. This project depends on aidan's ecs but is easy to swap out should you want to.
I also bundle the discord externs, they were created with dts2hx and I made some very basic modifications to types here and there.
If you want to upgrade the discord externs follow the process outlined in the dts2hx repo, link below.

**Requires**:
- [Haxe 4.2+](https://haxe.org/download)
- [Aidan's ECS](https://github.com/Aidan63/ecs)

Optional:
- [DTS2HX](https://github.com/haxiomic/dts2hx)

A more [`Complete`](https://github.com/Jarrio/Haxebot) example of how you can design your discord bot
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
	"prefixes": ["!", "+"],
	"discord_api_key": "TOKEN_HERE"
}
```
You can use this file to store other config settings by modifying the typedef found in the `Main.hx` file

5) Get your [`API token`](https://discord.com/developers/) and read here for further bot setup instructions
6) Add the bot to a server
7) Compile! 
8) Run the bot using: `node main.js` or hit the debug button in vscode
9) In your discord server send the command `!hi` and the bot should reply :)

![gif](https://user-images.githubusercontent.com/748557/117300860-e74c3200-ae71-11eb-8eec-d5953319ec02.gif)

## Usage
Usage is simple, a system represents a command and most of the initial parsing work is done in `CommandBase` all you need to do is just implement your commands.

### Adding a Command
Head to the `Main.hx` and you should see a line that says: 
```hx
universe.setSystems(Hi);
```
To add more commands, simply append it to the universe. When adding the component to the file, directly import it and make sure to **not** use wildcard imports.
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

Is what will be called when a message that matches the commands name is sent, treat this is the init point of the command. 
Click [`Message`](https://discord.js.org/#/docs/main/stable/class/Message) to see the official API, documentation and usage. 

`Command` is just an object with 2 fields:
 
- `name`: The command name (`!hi`)
- `content`: The content that is sent a long with the command, so if a user sent `!hi 123 456 789` content will be trimmed and parsed as:
```hx
{
	name: "!hi",
	content: "123 456 789"
}
```
