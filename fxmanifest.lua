fx_version 'adamant'

game 'gta5'

description 'Comando entorno para avisar a la policia de lo que está pasando.'

version '1.0.0'

server_scripts {
	'@es_extended/locale.lua',
	'locales/es.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/es.lua',
	'config.lua',
	'client/main.lua'
    
}

dependencies {
	'es_extended'
}
