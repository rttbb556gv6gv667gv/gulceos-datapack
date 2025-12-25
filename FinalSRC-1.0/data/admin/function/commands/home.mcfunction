$execute if data storage admin:home {id:{"$(id)":{dim:"minecraft:overworld"}}} in minecraft:overworld run summon marker ~ ~ ~ {Tags:["ap_home_tp"]}
$execute if data storage admin:home {id:{"$(id)":{dim:"minecraft:the_nether"}}} in minecraft:the_nether run summon marker ~ ~ ~ {Tags:["ap_home_tp"]}
$execute if data storage admin:home {id:{"$(id)":{dim:"minecraft:the_end"}}} in minecraft:the_end run summon marker ~ ~ ~ {Tags:["ap_home_tp"]}
$execute as @e[type=marker,tag=ap_home_tp,limit=1,sort=nearest] run data modify entity @s Pos set from storage admin:home id."$(id)".pos
execute at @e[type=marker,tag=ap_home_tp,limit=1,sort=nearest] run tp @s[tag=!ap_home_tp,type=minecraft:player] ~ ~ ~
kill @e[type=marker,tag=ap_home_tp]
$title @s actionbar {"text":"Home'a ışınlandın: $(id)","color":"aqua"}