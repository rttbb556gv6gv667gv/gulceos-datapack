# ═══════════════════════════════════════════════════
# Üye Listesi Loop
# ═══════════════════════════════════════════════════

# İlk üyeyi al ve göster
data modify storage mc:_ temp.member_name set from storage mc:_ temp.member_list[0]
function custom_admin:group/display_member with storage mc:_ temp

# Listeden çıkar
data remove storage mc:_ temp.member_list[0]

# Devam et
execute if data storage mc:_ temp.member_list[0] run function custom_admin:group/list_members_loop