# ═══════════════════════════════════════════════════
# Function Call Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.function set from storage mc:_ temp.params.function
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/function_call_run with storage mc:_ temp