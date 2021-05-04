# Discord Bot Template
A basic and probably over engineered approach to creating a discord bot in haxe. This project utilises aidan's ECS which can be found at(https://github.com/Aidan63/ecs).
This comes with the discord externs, the externs were created with dts2hx and I made some modifications where required to make things work better.
If you want to upgrade the discord externs follow the process outlined in the dts2hx repo: (https://github.com/haxiomic/dts2hx) 

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
	"prefixes": ["!", "+"],
	"discord_api_key": "TOKEN_HERE"
}
```
5) Go to (https://discord.com/developers/) to obtain your API token and further bot setup instructions
6) Add the bot to a server
7) Compile! 
8) In your discord server send the command `!hi` and the bot should reply :)
