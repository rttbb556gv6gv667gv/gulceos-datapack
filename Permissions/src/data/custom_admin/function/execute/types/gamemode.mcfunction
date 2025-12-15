# ═══════════════════════════════════════════════════
# Gamemode Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.mode set from storage mc:_ temp.params.mode
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/gamemode_run with storage mc:_ temp