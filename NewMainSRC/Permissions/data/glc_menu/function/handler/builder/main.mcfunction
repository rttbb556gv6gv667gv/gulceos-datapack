# ═══════════════════════════════════════════════════
# Ana Menü Builder
# ═══════════════════════════════════════════════════

# Loading göster
scoreboard players set @s gulce_load.dialog 20
function glc_menu:handler/dialog/loading

# Ana menü JSON'ı hazırla
data modify storage mc:dialog ui set value {type:"minecraft:multi_action",title:{"text":"🎮 GULCE İzin Yönetimi","color":"gold","bold":true},body:{type:"minecraft:plain_message",contents:"§l§a✨ İzinleri buradan yönetebilirsiniz\n\n§7• İzin Listesi (Yürüt/Düzenle/Sil)\n§7• Yeni İzin Ekle"},can_close_with_escape:true,pause:false,actions:[]}

# Butonları ekle
data modify storage mc:dialog ui.actions append value {label:"📋 İzin Listesi",action:{type:"minecraft:run_command",command:"/trigger gulce_menu set 2"}}

data modify storage mc:dialog ui.actions append value {label:"➕ Yeni İzin Ekle",action:{type:"minecraft:show_dialog",dialog:{type:"minecraft:multi_action",title:"➕ Yeni İzin Ekle",inputs:[{type:"minecraft:text",key:"id",label:"ID",max_length:100},{type:"minecraft:text",key:"player",label:"Oyuncu",max_length:100},{type:"minecraft:text",key:"permission",label:"İzin Adı",max_length:100},{type:"minecraft:text",key:"level",label:"Seviye",initial:"1",max_length:10}],actions:[{label:"✅ Ekle",action:{type:"minecraft:dynamic/run_command",template:"/function custom_admin:add/permission {id:\"$(id)\",player:\"$(player)\",permission:\"$(permission)\",level:$(level)}"}}]}}}

data modify storage mc:dialog ui.actions append value {label:"◀️ Ana Panel",action:{type:"minecraft:run_command",command:"/trigger gulce_trigger set 1"}}

# Dialog aç
function glc_menu:handler/dialog/open with storage mc:dialog