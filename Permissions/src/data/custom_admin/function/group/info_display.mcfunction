# ═══════════════════════════════════════════════════
# Grup Bilgi Gösterici (MACRO)
# ═══════════════════════════════════════════════════

# Temel bilgiler
$tellraw @s ["",{"text":"📛 İsim: ","color":"gray"},{"text":"$(name)","color":"aqua"}]
$tellraw @s ["",{"text":"🆔 ID: ","color":"gray"},{"text":"$(id)","color":"yellow"}]
$tellraw @s ["",{"text":"⭐ Öncelik: ","color":"gray"},{"text":"$(priority)","color":"light_purple"}]

# Üye sayısı
$execute store result score #members gulce_id run data get storage mc:handler data.groups[{id:"$(id)"}].members
tellraw @s ["",{"text":"👥 Üyeler: ","color":"gray"},{"score":{"name":"#members","objective":"gulce_id"},"color":"green"}]

# Üyeleri listele
$execute if score #members gulce_id matches 1.. run data modify storage mc:_ temp.member_list set from storage mc:handler data.groups[{id:"$(id)"}].members
execute if score #members gulce_id matches 1.. run function custom_admin:group/list_members_loop

# İzin sayısı
$execute store result score #perms gulce_id run data get storage mc:handler data.groups[{id:"$(id)"}].permissions
tellraw @s ["",{"text":"🔐 İzinler: ","color":"gray"},{"score":{"name":"#perms","objective":"gulce_id"},"color":"aqua"}]

# İzinleri listele
$execute if score #perms gulce_id matches 1.. run data modify storage mc:_ temp.perm_list set from storage mc:handler data.groups[{id:"$(id)"}].permissions
execute if score #perms gulce_id matches 1.. run function custom_admin:group/list_perms_loop