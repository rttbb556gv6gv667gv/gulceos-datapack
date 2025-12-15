$execute as $(player) at @s run playsound $(sound) master @s ~ ~ ~ $(volume) $(pitch)

$tellraw $(player) ["",{"text":"🔊 ","color":"gold"},{"text":"Ses çalındı: ","color":"gray"},{"text":"$(sound)","color":"yellow"}]