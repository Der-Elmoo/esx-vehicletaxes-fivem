resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

author 'der_elmoo'
description 'Taxes for vehicles. Thanks to myScripts for helping me'
version '1.0'

shared_scripts {
    '@es_extended/locale.lua',
    'locales/*.lua',
    'config.lua'
}

client_script 'client/main.lua'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/main.lua'
}
