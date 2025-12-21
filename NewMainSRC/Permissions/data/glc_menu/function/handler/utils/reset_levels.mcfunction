# ═══════════════════════════════════════════════════
# Tüm Seviyeleri Sıfırla (MACRO)
# ═══════════════════════════════════════════════════

# İzin sayısını al
execute store result score #reset_count gulce_id run data get storage mc:handler data.permissions

# Sıfırla
$execute if score #reset_count gulce_id matches 1.. run function glc_menu:handler/utils/reset_loop {level:$(level)}

# Feedback
$tellraw @s ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"✅ Tüm seviyeler ","color":"green"},{"text":"$(level)","color":"yellow"},{"text":" olarak ayarlandı","color":"green"}]

# Menüye dön
trigger gulce_menu set 3