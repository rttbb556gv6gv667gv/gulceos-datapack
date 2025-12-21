# ═══════════════════════════════════════════════════
# Effect Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.effect set from storage mc:_ temp.params.effect
data modify storage mc:_ temp.duration set from storage mc:_ temp.params.duration
data modify storage mc:_ temp.amplifier set from storage mc:_ temp.params.amplifier
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/effect_run with storage mc:_ temp