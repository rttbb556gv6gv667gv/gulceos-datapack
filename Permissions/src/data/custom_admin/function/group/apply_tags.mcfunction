# ═══════════════════════════════════════════════════
# Tag Uygulama - Tüm gruplara
# ═══════════════════════════════════════════════════

# İlk grubu al
data modify storage mc:_ temp.current_group set from storage mc:handler data.groups[0]

# Bu gruba tag uygula
function custom_admin:group/apply_single_group with storage mc:_ temp.current_group

# Listeden çıkar
data modify storage mc:_ temp.groups_remaining set from storage mc:handler data.groups
data remove storage mc:_ temp.groups_remaining[0]

# Kalan grup varsa devam et
execute if data storage mc:_ temp.groups_remaining[0] run function custom_admin:group/apply_tags_loop