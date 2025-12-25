# ═══════════════════════════════════════════════════
# Message Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.text set from storage mc:_ temp.params.text
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/message_run with storage mc:_ temp