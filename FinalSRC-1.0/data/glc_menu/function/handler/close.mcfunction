# ═══════════════════════════════════════════════════
# Dialog Kapat
# ═══════════════════════════════════════════════════

# Skorları sıfırla
scoreboard players set @s gulce_load.dialog -1

# Tag'leri temizle
tag @s remove glc.show_pending
tag @s remove closed.glc
tag @s add glc.close_dialog

# Log
tellraw @s[tag=gulce_debug] ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"Dialog kapatıldı","color":"gray"}]