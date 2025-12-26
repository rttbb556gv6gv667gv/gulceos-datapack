# ===========================
# Builder Rolleri Tetik Döngüsü
# ===========================

execute as @a[tag=Builder,scores={ap_fill_area=1..}] at @s run function custom:permissions/builder/actions/fill_gui
execute as @a[tag=Builder,scores={ap_clear_weather=1..}] at @s run function custom:permissions/builder/actions/weather_clear
execute as @a[tag=Builder,scores={ap_rain=1..}] at @s run function custom:rain
execute as @a[tag=Builder,scores={ap_gamemode=2..}] at @s run function custom:permissions/builder/actions/gamemode_creative
execute as @a[tag=Builder,scores={ap_time=1}] at @s run time set day
execute as @a[tag=Builder,scores={ap_time=3}] at @s run time set midnight
execute as @a[tag=Builder,scores={ap_time=4}] at @s run time set night
execute as @a[tag=Builder,scores={ap_time=2}] at @s run time set noon
execute as @a[tag=Builder,scores={ap_gamemode=1}] at @s run gamemode survival @s
execute as @a[tag=Builder,scores={ap_xp=1}] at @s run xp add @s 10000

# Sıfırla
scoreboard players set @a[scores={ap_xp=1..}] ap_xp 0
scoreboard players set @a[scores={ap_time=1..}] ap_gamemode 0
scoreboard players set @a[scores={ap_time=1..}] ap_time 0
scoreboard players set @a[scores={ap_clear_weather=1..}] ap_weather 0
scoreboard players set @a[scores={ap_fill_area=1..}] ap_fill_area 0
scoreboard players set @a[scores={ap_rain=1..}] ap_rain 0


# Builder tetikleyicilerini etkinleştir
execute as @a[tag=Builder] run scoreboard players enable @s ap_fill_area
execute as @a[tag=Builder] run scoreboard players enable @s ap_weather
execute as @a[tag=Builder] run scoreboard players enable @s ap_time
execute as @a[tag=Builder] run scoreboard players enable @s ap_gamemode

execute as @a[tag=Builder] run scoreboard players enable @s ap_rain

