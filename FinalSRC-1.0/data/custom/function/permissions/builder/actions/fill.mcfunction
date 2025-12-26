$fill $(xyz1) $(xyz2) $(block)
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0.1 10
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
tellraw @s {"text":"🧱 Alan dolduruldu.","color":"green"}
