# ═══════════════════════════════════════════════════
# Edit Name - İsim değiştirir (MACRO)
# ═══════════════════════════════════════════════════

$data modify storage mc:handler data.players[{name:"$(old_name)"}].name set value "$(new_name)"

# Feedback
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İsim değiştirildi: ","color":"green"},{"text":"$(old_name)","color":"red"},{"text":" → ","color":"gray"},{"text":"$(new_name)","color":"yellow"}]