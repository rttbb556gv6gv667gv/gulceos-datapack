# ═══════════════════════════════════════════════════
# Oyuncuya Göre Sil (MACRO)
# ═══════════════════════════════════════════════════

# Silinecekleri say
$execute store result score #delete_count gulce_id run data get storage mc:handler data.permissions[{player:"$(player)"}]

# Sil
$data remove storage mc:handler data.permissions[{player:"$(player)"}]

# Feedback
$tellraw @s ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"🗑️ ","color":"red"},{"text":"$(player)","color":"yellow"},{"text":" oyuncusunun ","color":"gray"},{"score":{"name":"#delete_count","objective":"gulce_id"},"color":"aqua"},{"text":" izni silindi","color":"gray"}]

# Menüye dön
trigger gulce_menu set 3