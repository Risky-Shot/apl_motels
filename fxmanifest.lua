fx_version 'cerulean'
game 'gta5'

description 'apl_motels'
repository ''
version '0.1'

ox_lib 'locale'

shared_scripts {
    '@ox_lib/init.lua',
    '@qbx_core/modules/lib.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*',
}

client_scripts {
    'client/*'
}

files {
    'config/client.lua',
    'config/shared.lua',
    'locales/*.json',
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'