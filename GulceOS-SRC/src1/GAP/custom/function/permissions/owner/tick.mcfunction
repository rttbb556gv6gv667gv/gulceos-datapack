# === EXECUTES ===
execute as @a[scores={ap_survival=1..}] run gamemode survival @s
scoreboard players set @a[scores={ap_survival=1..}] ap_survival 0

execute as @a[scores={ap_adventure=1..}] run gamemode adventure @s
scoreboard players set @a[scores={ap_adventure=1..}] ap_adventure 0

execute as @a[scores={ap_spectator=1..}] run gamemode spectator @s
scoreboard players set @a[scores={ap_spectator=1..}] ap_spectator 0

execute as @a[scores={ap_add_xp=1..}] run xp add @s 100 points
scoreboard players set @a[scores={ap_add_xp=1..}] ap_add_xp 0

execute as @a[scores={ap_kill_all_mobs=1..}] run kill @e[type=!minecraft:player]
scoreboard players set @a[scores={ap_kill_all_mobs=1..}] ap_kill_all_mobs 0

execute as @a[scores={ap_run=1..}] run dialog show @s custom:run
scoreboard players set @a ap_run 0
scoreboard players enable @a[tag=Owner] ap_run