# ═══════════════════════════════════════════════════
# İzin Listesi Loop
# ═══════════════════════════════════════════════════

# İlk izni al ve göster
data modify storage mc:_ temp.perm_item set from storage mc:_ temp.perm_list[0]
function custom_admin:group/display_permission with storage mc:_ temp.perm_item

# Listeden çıkar
data remove storage mc:_ temp.perm_list[0]

# Devam et
execute if data storage mc:_ temp.perm_list[0] run function custom_admin:group/list_perms_loop