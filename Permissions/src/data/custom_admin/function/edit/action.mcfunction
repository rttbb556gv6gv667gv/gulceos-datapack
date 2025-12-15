# ═══════════════════════════════════════════════════
# Edit Action - Eylemi düzenler (MACRO)
# ═══════════════════════════════════════════════════

$data modify storage mc:handler data.actions[{id:"$(id)"}].type set value "$(type)"
$data modify storage mc:handler data.actions[{id:"$(id)"}].value set value "$(value)"

# Feedback
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem düzenlendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]