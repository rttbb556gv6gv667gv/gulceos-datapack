# ═══════════════════════════════════════════════════
# Tüm Grupları Listele
# ═══════════════════════════════════════════════════

# Başlık
tellraw @s ["",{"text":"═══════════════════════════════════","color":"aqua","bold":true}]
tellraw @s ["",{"text":"👥 Tüm Gruplar","color":"gold","bold":true}]
tellraw @s ["",{"text":"═══════════════════════════════════","color":"aqua","bold":true}]

# Grup sayısı
execute store result score #total_groups gulce_id run data get storage mc:handler data.groups

# Boş kontrol
execute if score #total_groups gulce_id matches 0 run tellraw @s ["",{"text":"  ❌ Hiç grup yok","color":"red"}]
execute if score #total_groups gulce_id matches 0 run tellraw @s ["",{"text":"═══════════════════════════════════","color":"aqua","bold":true}]
execute if score #total_groups gulce_id matches 0 run return 0

# Liste hazırla
data modify storage mc:_ temp.list_groups set from storage mc:handler data.groups
function custom_admin:group/list_all_loop

# Toplam
tellraw @s ["",{"text":"  📊 Toplam: ","color":"gray"},{"score":{"name":"#total_groups","objective":"gulce_id"},"color":"yellow"},{"text":" grup","color":"gray"}]

# Alt çizgi
tellraw @s ["",{"text":"═══════════════════════════════════","color":"aqua","bold":true}]