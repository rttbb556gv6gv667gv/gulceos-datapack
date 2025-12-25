$execute as $(player) at @s run summon $(entity) ~$(x) ~$(y) ~$(z) $(nbt)

$tellraw $(player) ["",{"text":"🐾 ","color":"green"},{"text":"Varlık çağrıldı: ","color":"gray"},{"text":"$(entity)","color":"yellow"}]