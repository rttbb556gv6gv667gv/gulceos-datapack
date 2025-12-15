# ═══════════════════════════════════════════════════
# Add Action - Teleport (MACRO)
# ═══════════════════════════════════════════════════

$data modify storage mc:handler data.actions append value {id:"$(id)",type:"teleport",params:{x:"$(x)",y:"$(y)",z:"$(z)"},player:"$(player)"}

$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"✅ Işınlama eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(x) $(y) $(z)","color":"aqua"}]

$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem eklendi: ","color":"gray"},{"text":"$(id)","color":"yellow"}]