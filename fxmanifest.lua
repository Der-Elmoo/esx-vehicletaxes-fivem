fx_version 'cerulean'
game 'gta5'


author 'der_elmoo'
description 'Taxes for vehicles. Thanks to myScripts for helping me'
version '1.1'

shared_scripts {
    'config.lua'
}

client_script 'client/main.lua'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/main.lua'
}
