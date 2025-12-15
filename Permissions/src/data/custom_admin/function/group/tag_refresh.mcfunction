# ═══════════════════════════════════════════════════
# Grup Tag Yenileme - Her 5 saniyede bir
# ═══════════════════════════════════════════════════

# Tüm grup taglarını temizle
tag @a remove gulce_has_group

# Grupları kontrol et ve tag'leri uygula
execute if data storage mc:handler data.groups[0] run function custom_admin:group/apply_tags

# Log
tellraw @a[tag=gulce_admin,tag=gulce_debug] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"🔄 Grup tagları yenilendi","color":"gray"}]