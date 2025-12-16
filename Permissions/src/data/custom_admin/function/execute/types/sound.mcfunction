# ═══════════════════════════════════════════════════
# Sound Action
# ═══════════════════════════════════════════════════

data modify storage mc:_ temp.sound set from storage mc:_ temp.params.sound
data modify storage mc:_ temp.volume set from storage mc:_ temp.params.volume
data modify storage mc:_ temp.pitch set from storage mc:_ temp.params.pitch
data modify storage mc:_ temp.player set from storage mc:_ temp.exec_action.player

function custom_admin:execute/types/sound_run with storage mc:_ temp