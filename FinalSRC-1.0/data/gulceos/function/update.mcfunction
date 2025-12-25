# Sadece OP çalıştırabilsin + el boş olsun
execute unless entity @s[tag=op] run tellraw @s {"text":"Bu komutu sadece OP kullanabilir!","color":"red"}
execute unless entity @s[tag=op] run return 0
execute unless entity @s[nbt=!{SelectedItem:{}}] run tellraw @s {"text":"Elini boşalt!","color":"red"}
execute unless entity @s[nbt=!{SelectedItem:{}}] run return 0

tellraw @a {"text":"GulceOS güncelleniyor... v1.12R → v2.1R","color":"gold","bold":true}
function gulceos:updater/activate