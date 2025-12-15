# ═══════════════════════════════════════════════════
# Tag Loop
# ═══════════════════════════════════════════════════

# İlk grubu al
data modify storage mc:_ temp.current_group set from storage mc:_ temp.groups_remaining[0]

# Tag uygula
function custom_admin:group/apply_single_group with storage mc:_ temp.current_group

# Listeden çıkar
data remove storage mc:_ temp.groups_remaining[0]

# Devam et
execute if data storage mc:_ temp.groups_remaining[0] run function custom_admin:group/apply_tags_loop