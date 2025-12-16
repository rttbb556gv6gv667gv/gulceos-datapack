# ═══════════════════════════════════════════════════
# Add Permission - İzin ekler (MACRO)
# ═══════════════════════════════════════════════════

$execute if data storage mc:handler data.permissions[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"HATA: Zaten Var - ","color":"red"},{"text":"$(id)","color":"yellow"}]
$execute if data storage mc:handler data.permissions[{id:"$(id)"}] run return 0

$data modify storage mc:handler data.permissions append value {id:"$(id)",player:"$(player)",permission:"$(permission)",level:$(level)}

# Feedback
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin eklendi: ","color":"green"},{"text":"$(permission)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(player)","color":"aqua"}]

# Log
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin eklendi: ","color":"gray"},{"text":"$(player)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(permission)","color":"aqua"}]