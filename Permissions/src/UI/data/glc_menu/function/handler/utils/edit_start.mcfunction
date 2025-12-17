# ═══════════════════════════════════════════════════
# Düzenleme Başlat (MACRO)
# ═══════════════════════════════════════════════════

# Loading başlat
scoreboard players set @s gulce_load.dialog 20
tag @s add glc.show_pending
function glc_menu:handler/dialog/loading

# ID'yi kaydet
$data modify storage mc:dialog temp.edit_id set value "$(id)"

# Düzenleme menüsünü hazırla
function glc_menu:handler/builder/edit_single with storage mc:dialog temp