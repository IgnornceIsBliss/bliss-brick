fx_version 'cerulean'
game 'gta5' 
lua54 'yes'

author 'IgnoranceIsBliss'
description 'Simple script to troll vehicles with bricks'
version '1.0'

dependencies { 'ox_lib', 'ox_target'}

shared_scripts {'@ox_lib/init.lua'}


client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}
