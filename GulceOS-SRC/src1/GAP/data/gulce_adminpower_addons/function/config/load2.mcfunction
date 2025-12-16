# İzin Seviyesi Ayarlama
$scoreboard players set @s permission_level $(level)

# Bilgi Mesajı
$schedule function gulce_adminpower_addons:loaded $(load_second)t

# Döngüye Girme Süresi
$schedule function gulce_adminpower_addons:loop $(loop)t replace

# Kuralları Göster
$function custom_admin:dialogs/menu/rules/show {"Player":"$(DisplayRules)"}

# Diğer...
$recipe $(diamond_to_emerald_recipe) @a gulce_adminpower_addons:diamond_to_emerald
$function gulce_adminpower_addons:config/cl {"cl_second":"$(cl_second)s"}
$function gulce_adminpower_addons:help_menu/enable/2 {"action":"$(TriggerHelpCommand)"}
$function gulce_adminpower_addons:config/main {"load":"$(load)"}
$function _custom:show_$(log_type)
execute if data storage custom:storage {"type":"message","value":"X OYUNA KATILDI","mode":"on"} run tellraw @a [  {    "text": "⚡ ",    "color": "gold",    "bold": true,    "italic": false  },  {    "selector": "@s[type=minecraft:player]",    "color": "yellow",    "bold": true,    "italic": false  },  {    "text": " sunucuya giriş yaptı!",    "color": "green",    "italic": false  },  {    "text": "\n🌍 Hoş geldin savaşçı!",    "color": "aqua",    "italic": false  },  {    "text": "\n💬 İpucu: ",    "color": "gray",    "italic": false  },  {    "text": "Menüye /dialog show @s <menü> yazarak erişebilirsin.",    "color": "white",    "italic": false  },  {    "text": "\n🔥 İyi oyunlar dileriz!",    "color": "red",    "bold": true,    "italic": false  }]
$data merge storage custom:storage {"type":"message","value":"X OYUNA KATILDI","mode":"$(mode)"}