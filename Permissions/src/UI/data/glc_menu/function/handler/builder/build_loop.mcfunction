# ═══════════════════════════════════════════════════
# İzin Buton Loop
# ═══════════════════════════════════════════════════

# İndex artır
scoreboard players add #perm_index gulce_id 1

# Mevcut izni al
execute store result storage mc:dialog temp.current_index int 1 run scoreboard players get #perm_index gulce_id
function glc_menu:handler/builder/get_permission with storage mc:dialog temp

# Buton ekle
function glc_menu:handler/builder/add_button with storage mc:dialog temp.current_perm

# Devam et
execute if score #perm_index gulce_id < #perm_count gulce_id run function glc_menu:handler/builder/build_loop