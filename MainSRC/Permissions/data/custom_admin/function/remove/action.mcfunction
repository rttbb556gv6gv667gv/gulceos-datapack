# ═══════════════════════════════════════════════════
# Remove Action - Eylem siler (MACRO)
# ═══════════════════════════════════════════════════

$execute if data storage mc:handler data.permissions[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"HATA: Zaten Var - ","color":"red"},{"text":"$(id)","color":"yellow"}]
$execute if data storage mc:handler data.permissions[{id:"$(id)"}] run return 0

$data modify storage mc:handler data.actions set value {id:"$(id)",type:"",params:{},player:""}

# Feedback
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem silindi: ","color":"red"},{"text":"$(id)","color":"yellow"}]

# Log
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem silindi: ","color":"gray"},{"text":"$(id)","color":"yellow"}]