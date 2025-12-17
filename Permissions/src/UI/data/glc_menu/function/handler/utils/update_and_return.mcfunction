# ═══════════════════════════════════════════════════
# Güncelle ve Geri Dön (MACRO)
# ═══════════════════════════════════════════════════

# Geçici storage'dan al
data modify storage mc:dialog temp.update_data set from storage mc:dialog ui.inputs

# Güncelle
$function glc_menu:handler/utils/update_permission {id:"$(id)"}

# Listeye geri dön
scoreboard players set @s gulce_menu 2
scoreboard players enable @s gulce_menu