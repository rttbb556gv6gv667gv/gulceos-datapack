# ═══════════════════════════════════════════════════
# Tek Grup İçin Tag Uygula (MACRO)
# ═══════════════════════════════════════════════════

# Üyelere tag ver
$tag @a remove gulce_group_$(id)
$execute as @a if data storage mc:handler data.groups[{id:"$(id)"}].members[{value:"@s"}] run tag @s add gulce_group_$(id)