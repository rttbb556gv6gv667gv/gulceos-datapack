# ═══════════════════════════════════════════════════
# İstatistikler
# ═══════════════════════════════════════════════════

# Sayıları hesapla
execute store result score #total_perms gulce_id run data get storage mc:handler data.permissions
execute store result score #total_groups gulce_id run data get storage mc:handler data.groups
execute store result score #total_actions gulce_id run data get storage mc:handler data.actions

# Göster
tellraw @s ["",{"text":"═══════════════════════════════════","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"📊 Sistem İstatistikleri","color":"gold","bold":true}]
tellraw @s ["",{"text":"═══════════════════════════════════","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"  🔐 İzinler: ","color":"gray"},{"score":{"name":"#total_perms","objective":"gulce_id"},"color":"aqua"}]
tellraw @s ["",{"text":"  👥 Gruplar: ","color":"gray"},{"score":{"name":"#total_groups","objective":"gulce_id"},"color":"yellow"}]
tellraw @s ["",{"text":"  ⚡ Eylemler: ","color":"gray"},{"score":{"name":"#total_actions","objective":"gulce_id"},"color":"green"}]
tellraw @s ["",{"text":"═══════════════════════════════════","color":"light_purple","bold":true}]