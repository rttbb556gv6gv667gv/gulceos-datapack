# ═══════════════════════════════════════════════════
# Dialog Show - Gerçek Gösterici - DÜZELTİLDİ
# ═══════════════════════════════════════════════════

# Dialog göster
execute as @p[tag=gulce_admin,tag=!closed.glc] run function glc_menu:handler/dialog/show_final with storage mc:dialog

# ✅ YENİ: Skor -1 yap (tekrar gösterilmesin)
scoreboard players set @s gulce_load.dialog -1

# ✅ YENİ: Pending tag kaldır
tag @s remove glc.show_pending

# Tag temizle
tag @s remove closed.glc

# Log
tellraw @s[tag=gulce_debug] ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"Dialog gösterildi","color":"green"}]