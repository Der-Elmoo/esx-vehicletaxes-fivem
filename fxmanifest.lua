fx_version 'cerulean'
game 'gta5'

author 'der_elmoo'
description 'Taxes for vehicles. Thanks to myScripts for helping me'
version '1.0'

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server.lua'
}