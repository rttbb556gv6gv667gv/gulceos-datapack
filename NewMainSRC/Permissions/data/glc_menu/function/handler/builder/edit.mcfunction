# ═══════════════════════════════════════════════════
# Düzenleme Menüsü Builder
# ═══════════════════════════════════════════════════

# Loading göster
scoreboard players set @s gulce_load.dialog 20
function glc_menu:handler/dialog/loading

# Menü hazırla
data modify storage mc:dialog ui set value {type:"minecraft:multi_action",title:{"text":"✏️ Toplu Düzenleme","color":"yellow","bold":true},body:{type:"minecraft:plain_message",contents:"§l§eToplu İşlemler\n\n§7• Tüm İzinleri Sil\n§7• İzin Seviyelerini Sıfırla\n§7• Belirli Oyuncunun İzinlerini Sil"},can_close_with_escape:true,pause:false,actions:[]}

# Butonlar
data modify storage mc:dialog ui.actions append value {label:"🗑️ Tümünü Sil",action:{type:"minecraft:show_dialog",dialog:{type:"minecraft:multi_action",title:"⚠️ TEHLİKE",body:{type:"minecraft:plain_message",contents:"§l§4UYARI!\n\n§cTÜM İZİNLER SİLİNECEK!\n\n§7Bu işlem geri alınamaz!"},can_close_with_escape:true,pause:false,actions:[{label:"✅ Eminim, Sil",action:{type:"minecraft:run_command",command:"/data remove storage mc:handler data.permissions"}},{label:"❌ Vazgeç",action:{type:"minecraft:run_command",command:"/trigger gulce_menu set 3"}}]}}}

data modify storage mc:dialog ui.actions append value {label:"🔄 Seviyeleri Sıfırla",action:{type:"minecraft:show_dialog",dialog:{type:"minecraft:multi_action",title:"🔄 Seviye Sıfırlama",inputs:[{type:"minecraft:text",key:"new_level",label:"Yeni Seviye (Tüm izinler için)",initial:"1",max_length:5}],actions:[{label:"✅ Uygula",action:{type:"minecraft:dynamic/run_command",template:"/function glc_menu:handler/utils/reset_levels {level:$(new_level)}"}}]}}}

data modify storage mc:dialog ui.actions append value {label:"👤 Oyuncuya Göre Sil",action:{type:"minecraft:show_dialog",dialog:{type:"minecraft:multi_action",title:"👤 Oyuncu İzinlerini Sil",inputs:[{type:"minecraft:text",key:"player",label:"Oyuncu Adı",max_length:50}],actions:[{label:"🗑️ Sil",action:{type:"minecraft:dynamic/run_command",template:"/function glc_menu:handler/utils/delete_by_player {player:\"$(player)\"}"}}]}}}

data modify storage mc:dialog ui.actions append value {label:"📊 İstatistikler",action:{type:"minecraft:run_command",command:"/function glc_menu:handler/utils/stats"}}

data modify storage mc:dialog ui.actions append value {label:"◀️ Geri",action:{type:"minecraft:run_command",command:"/trigger gulce_menu set 1"}}

# Dialog aç
function glc_menu:handler/dialog/open with storage mc:dialog