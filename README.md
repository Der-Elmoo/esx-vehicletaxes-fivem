# vehtaxes-fivem
Taxes for vehicles. Thanks to myScripts for helping me

# Installation
1. Download the script
2. Drag and Drop it into your resources folder
4. Configurate it if you need
4.1 If you have ESX Legacy follow the "ESX Legacy" instructions below.
3. Add **start taxes** to your server.cfg

# Credits
Thanks to myScripts for helping me scripting this

# ESX Legacy
1. First set Config.Legacy to true
2. Replace the fxmanifest.lua content with this:

fx_version 'cerulean'
game 'gta5'


author 'der_elmoo'
description 'Taxes for vehicles. Thanks to myScripts for helping me'
version '1.1'

shared_scripts {
    '@es_extended/imports.lua',
    'locales/*.lua',
    'config.lua'
}

client_script 'client/main.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}
