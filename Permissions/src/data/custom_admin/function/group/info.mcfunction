# ═══════════════════════════════════════════════════
# Grup Detaylı Bilgi (MACRO)
# ═══════════════════════════════════════════════════

# Grup var mı kontrol
$execute unless data storage mc:handler data.groups[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"❌ HATA: Grup bulunamadı - $(id)","color":"red"}]
$execute unless data storage mc:handler data.groups[{id:"$(id)"}] run return 0

# Grubu geçici storage'a al
$data modify storage mc:_ temp.info_group set from storage mc:handler data.groups[{id:"$(id)"}]

# Başlık
tellraw @s ["",{"text":"═══════════════════════════════════","color":"aqua","bold":true}]
$tellraw @s ["",{"text":"📋 Grup Bilgisi: ","color":"gold","bold":true},{"text":"$(id)","color":"yellow"}]
tellraw @s ["",{"text":"═══════════════════════════════════","color":"aqua","bold":true}]

# Bilgiler
function custom_admin:group/info_display with storage mc:_ temp.info_group

# Alt çizgi
tellraw @s ["",{"text":"═══════════════════════════════════","color":"aqua","bold":true}]