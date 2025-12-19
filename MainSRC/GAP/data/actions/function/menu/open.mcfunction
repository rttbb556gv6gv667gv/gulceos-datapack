# Menü Aç
execute at @s[tag=op] run function actions:menu/1 {Selector:"@s",Unless:"tag=op"}
execute at @s[tag=op] run data modify storage userfunc:log actions set value {OpenedMenu:"main"}
execute at @s[tag=op] run return 1

# Menü Aç (Son)
execute at @s run function actions:menu/1 {Selector:"@s",Unless:"tag=Owner"}
execute at @s[tag=Owner] run data modify storage userfunc:log actions set value {OpenedMenu:"main"}
execute at @s[tag=Owner] run return 2

# Hata Ver
execute at @s unless entity @s[tag=op] run tellraw @s [{"text":"[AdminPower]: ","color":"green"},{"text":"Yetkin Yok!","color":"red"}]
execute at @s unless entity @s[tag=op] run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.8 1
execute at @s unless entity @s[tag=op] run data modify storage userfunc:log errors set value {"type":"permission_error","message":{en:"Not Permission!",tr:"Yetkin Yok!"}}
execute at @s unless entity @s[tag=op] run return 0

# Hata Ver (Son)
execute at @s unless entity @s[tag=Owner] run tellraw @s [{"text":"[AdminPower]: ","color":"green"},{"text":"Yetkin Yok!","color":"red"}]
execute at @s unless entity @s[tag=Owner] run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.8 1
execute at @s unless entity @s[tag=Owner] run data modify storage userfunc:log errors set value {"type":"permission_error","message":{en:"Not Permission!",tr:"Yetkin Yok!"}}
execute at @s unless entity @s[tag=Owner] run return 0