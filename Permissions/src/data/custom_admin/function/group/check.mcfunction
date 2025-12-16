# ═══════════════════════════════════════════════════
# Grup Kontrolü - Ana Loop
# ═══════════════════════════════════════════════════

# Grup sayısını al
execute store result score #group_check gulce_id run data get storage mc:handler data.groups

# Grup varsa kontrol et
execute if score #group_check gulce_id matches 1.. run function custom_admin:group/apply_tags

# Temizlik
scoreboard players set #group_check gulce_id 0