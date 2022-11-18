-- Resource Metadata
fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Jvson03'
description 'Taxes'
version '0.0.1'

shared_scripts {
    'config/config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

dependencies {
    'qb-core'
}