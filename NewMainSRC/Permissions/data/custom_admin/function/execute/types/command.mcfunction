# ═══════════════════════════════════════════════════
# Command Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.command set from storage mc:_ temp.params.command
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/command_run with storage mc:_ temp