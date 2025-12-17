# ═══════════════════════════════════════════════════
# Dialog Main - Ana menü storage'ı
# ═══════════════════════════════════════════════════

# UI storage başlangıcı
data modify storage mc:ui ui set value {main:{},permissions:{},help:{},about:{}}

# Log
tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Dialog sistemi yüklendi.","color":"gray"}]