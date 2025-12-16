tellraw @s [{"text":"[GulceOS]","color":"green"}," ",{"text":"Hazırlanıyor...","color":"gray"}]
$data merge storage custom:storage {"Player":"$(Name)"}

execute unless entity @s[tag=op] run tellraw @s [{"text":"[GulceOS]","color":"green"}," ",{"text":"Yetkin Yok!","color":"red"}]
execute unless entity @s[tag=op] run return 0

execute if entity @s[tag=op] run tellraw @s [{"text":"[GulceOS]","color":"green"}," ",{"text":"Yükleniyor...","color":"gray"}]
$execute if entity @s[tag=op,gamemode=creative] run function custom:permissions/$(id)/init with storage custom:storage

execute if entity @s[tag=op] run tellraw @s [{"text":"[GulceOS]","color":"green"}," ",{"text":"Devam Ediyor...","color":"gray"}]
execute if entity @s[tag=op] run data remove storage custom:storage Player

execute if entity @s[tag=op] run tellraw @s [{"text":"[GulceOS]","color":"green"}," ",{"text":"Başarılı!","color":"green"}]