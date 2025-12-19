# ═══════════════════════════════════════════════════
# Dialog Open - Storage Hazırlayıcı
# ═══════════════════════════════════════════════════

# Dialog JSON'ı temp'e kopyala
data modify storage mc:dialog temp.final_ui set from storage mc:dialog ui

# Tag kaldır (show için hazır)
tag @a remove closed.glc

# Log
tellraw @s[tag=gulce_debug] ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"Dialog hazırlandı","color":"gray"}]