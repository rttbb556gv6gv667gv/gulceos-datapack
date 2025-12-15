# ═══════════════════════════════════════════════════
# Gruba Üye Ekle (MACRO)
# ═══════════════════════════════════════════════════

# Grup var mı kontrol et
$execute unless data storage mc:handler data.groups[{id:"$(group_id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"❌ HATA: Grup bulunamadı - $(group_id)","color":"red"}]
$execute unless data storage mc:handler data.groups[{id:"$(group_id)"}] run return 0

# Oyuncu zaten üye mi kontrol et
$execute store success score #not_member gulce_id run data modify storage mc:_ temp.check_member set from storage mc:handler data.groups[{id:"$(group_id)"}].members[{value:"$(player)"}]

# Zaten üyeyse uyar
$execute if score #not_member gulce_id matches 0 run tellraw @s ["",{"text":"[GULCE] ","color":"yellow","bold":true},{"text":"⚠️ Oyuncu zaten bu grupta: $(player)","color":"yellow"}]
execute if score #not_member gulce_id matches 0 run return 0

# Üye ekle
$data modify storage mc:handler data.groups[{id:"$(group_id)"}].members append value "$(player)"

# Tag ver
$tag $(player) add gulce_group_$(group_id)

# Feedback
tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"✅ Üye eklendi","color":"green"}]
$tellraw @s ["",{"text":"  👤 Oyuncu: ","color":"gray"},{"text":"$(player)","color":"yellow"}]
$tellraw @s ["",{"text":"  👥 Grup: ","color":"gray"},{"text":"$(group_id)","color":"aqua"}]

# Oyuncuya bildir
$tellraw $(player) ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"📥 Gruba eklendiniz: ","color":"green"},{"text":"$(group_id)","color":"yellow"}]

# Log
tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Üye eklendi: ","color":"gray"},{"text":"$(player)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(group_id)","color":"aqua"}]