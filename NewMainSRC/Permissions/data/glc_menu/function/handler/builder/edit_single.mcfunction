# ═══════════════════════════════════════════════════
# Tek İzin Düzenleme (MACRO) - DÜZELTİLDİ
# ═══════════════════════════════════════════════════

# İzni geçici storage'a al
$data modify storage mc:dialog temp.edit_perm set from storage mc:handler data.permissions[{id:"$(id)"}]

# Düzenleme menüsü hazırla
$data modify storage mc:dialog ui set value {type:"minecraft:multi_action",title:"✏️ Düzenle: $(id)",inputs:[{type:"minecraft:text",key:"player",label:"Oyuncu",max_length:100},{type:"minecraft:text",key:"permission",label:"İzin Adı",max_length:100},{type:"minecraft:text",key:"level",label:"Seviye",initial:"1",max_length:10}],can_close_with_escape:true,pause:false,actions:[{label:"💾 Kaydet",action:{type:"minecraft:run_command",command:"/function glc_menu:handler/utils/update_and_return {id:\"$(id)\"}"}},{label:"❌ İptal",action:{type:"minecraft:run_command",command:"/trigger gulce_menu set 2"}}]}

# Input değerlerini doldur
data modify storage mc:dialog ui.inputs[0].initial set from storage mc:dialog temp.edit_perm.player
data modify storage mc:dialog ui.inputs[1].initial set from storage mc:dialog temp.edit_perm.permission
data modify storage mc:dialog ui.inputs[2].initial set from storage mc:dialog temp.edit_perm.level

# ✅ YENİ: Sadece open çağır, show otomatik olacak
function glc_menu:handler/dialog/open with storage mc:dialog