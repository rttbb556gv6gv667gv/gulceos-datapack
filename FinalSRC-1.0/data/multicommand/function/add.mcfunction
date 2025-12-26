# Komut eklemek için: /function multicommand:add with storage multicommand:temp
$data modify storage multicommand:data commands append value {command:"$(command)"}
tellraw @s {"text":"Komut eklendi","color":"yellow"}