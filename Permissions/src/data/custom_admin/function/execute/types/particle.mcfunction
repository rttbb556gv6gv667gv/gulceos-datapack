# ═══════════════════════════════════════════════════
# Particle Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.particle set from storage mc:_ temp.params.particle
data modify storage mc:_ temp.x set from storage mc:_ temp.params.x
data modify storage mc:_ temp.y set from storage mc:_ temp.params.y
data modify storage mc:_ temp.z set from storage mc:_ temp.params.z
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/particle_run with storage mc:_ temp