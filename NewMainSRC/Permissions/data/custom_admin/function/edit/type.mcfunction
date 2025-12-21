# ═══════════════════════════════════════════════════
# Edit Type - Tip değiştirir (MACRO)
# ═══════════════════════════════════════════════════

$data modify storage mc:handler data.actions[{id:"$(id)"}].type set value "$(type)"

# Feedback
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Tip değiştirildi: ","color":"green"},{"text":"$(type)","color":"yellow"}]