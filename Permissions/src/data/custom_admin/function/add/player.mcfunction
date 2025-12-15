# ═══════════════════════════════════════════════════
# Add Player - Oyuncu verisini ekler (MACRO)
# ═══════════════════════════════════════════════════

$data modify storage mc:handler data.players append value {name:"$(name)",uuid:"$(uuid)",permissions:[],actions:[]}

# ID ata
$scoreboard players add $(name) gulce_id 1

# Feedback
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu eklendi: ","color":"green"},{"text":"$(name)","color":"yellow"}]

# Log
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu eklendi: ","color":"gray"},{"text":"$(name)","color":"yellow"}]