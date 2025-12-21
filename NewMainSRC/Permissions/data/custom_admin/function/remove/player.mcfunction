# ═══════════════════════════════════════════════════
# Remove Player - Oyuncu verisini siler (MACRO)
# ═══════════════════════════════════════════════════

$data remove storage mc:handler data.players[{name:"$(name)"}]

# Scoreboard temizliği
$scoreboard players reset $(name) gulce_id

# Feedback
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu silindi: ","color":"red"},{"text":"$(name)","color":"yellow"}]

# Log
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu silindi: ","color":"gray"},{"text":"$(name)","color":"yellow"}]