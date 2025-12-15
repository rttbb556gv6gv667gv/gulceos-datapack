# ═══════════════════════════════════════════════════
# Grup Listesi Loop
# ═══════════════════════════════════════════════════

# İlk grubu al
data modify storage mc:_ temp.list_item set from storage mc:_ temp.list_groups[0]

# Göster
function custom_admin:group/display_group with storage mc:_ temp.list_item

# Listeden çıkar
data remove storage mc:_ temp.list_groups[0]

# Devam et
execute if data storage mc:_ temp.list_groups[0] run function custom_admin:group/list_all_loop