# ═══════════════════════════════════════════════════
# Trigger Handler - Scoreboard'ı enable eder ve yürütür
# ═══════════════════════════════════════════════════

# Trigger'ı etkinleştir
scoreboard players enable @s gulce_trigger

# Cooldown kontrolü
# execute if score @s gulce_cooldown matches 1.. run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Lütfen bekleyin! Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"gulce_cooldown"},"color":"yellow"},{"text":" tick","color":"red"}]
# execute if score @s gulce_cooldown matches 1.. run scoreboard players set @s gulce_trigger 0
# execute if score @s gulce_cooldown matches 1.. run return 0

# Trigger değerini kontrol et ve işle
execute if score @s gulce_trigger matches 1 run schedule function custom_admin:handler/dialog/load/main_menu 5t
execute if score @s gulce_trigger matches 2 run function custom_admin:handler/dialog/load/permission_manager
execute if score @s gulce_trigger matches 3 run function custom_admin:handler/dialog/load/help
execute if score @s gulce_trigger matches 4 run function custom_admin:handler/dialog/load/about
execute if score @s gulce_trigger matches 5 run function custom_admin:handler/dialog/load/action_manager

# Cooldown ayarla (30 tick = 1.5 saniye)
scoreboard players set @s gulce_cooldown 30

# Trigger'ı sıfırla
scoreboard players set @s gulce_trigger 0

# Log
tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Trigger çalıştırıldı: ","color":"gray"},{"selector":"@s","color":"yellow"}]