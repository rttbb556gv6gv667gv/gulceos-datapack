tellraw @a {"text":"GulceOS v2425 BAŞARIYLA YÜKLENDİ!","color":"green","bold":true,"underlined":true}
tellraw @a {"text":"Sunucu yenileniyor...","color":"aqua"}
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5

# Otomatik reload
function gulceos:system/restart