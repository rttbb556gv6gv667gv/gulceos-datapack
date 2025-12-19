# ═══════════════════════════════════════════════════
# Clear Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.item set from storage mc:_ temp.params.item
data modify storage mc:_ temp.count set from storage mc:_ temp.params.count
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/clear_run with storage mc:_ temp