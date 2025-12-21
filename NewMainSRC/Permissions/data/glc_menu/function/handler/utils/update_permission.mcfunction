# ═══════════════════════════════════════════════════
# İzin Güncelle (MACRO)
# ═══════════════════════════════════════════════════

# Güncelle
$data modify storage mc:handler data.permissions[{id:"$(id)"}].player set value "$(player)"
$data modify storage mc:handler data.permissions[{id:"$(id)"}].permission set value "$(permission)"
$data modify storage mc:handler data.permissions[{id:"$(id)"}].level set value $(level)

# Feedback
$tellraw @s ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"✅ İzin güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]

# Menüye dön
trigger gulce_menu set 2