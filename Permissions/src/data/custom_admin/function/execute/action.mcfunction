# ═══════════════════════════════════════════════════
# Execute Action - Eylem yürütücü (MACRO)
# ═══════════════════════════════════════════════════

# Eylemi storage'dan al
$data modify storage mc:_ temp.exec_action set from storage mc:handler data.actions[{id:"$(id)"}]

# Eylem var mı kontrol
$execute unless data storage mc:_ temp.exec_action run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"HATA: Eylem bulunamadı - ","color":"red"},{"text":"$(id)","color":"yellow"}]
execute unless data storage mc:_ temp.exec_action run return 0

# Parametreleri geçici storage'a kopyala
data modify storage mc:_ temp.params set from storage mc:_ temp.exec_action.params

# Tipine göre uygun fonksiyonu çağır
execute if data storage mc:_ temp.exec_action{type:"teleport"} run function custom_admin:execute/types/teleport
execute if data storage mc:_ temp.exec_action{type:"message"} run function custom_admin:execute/types/message
execute if data storage mc:_ temp.exec_action{type:"sound"} run function custom_admin:execute/types/sound
execute if data storage mc:_ temp.exec_action{type:"particle"} run function custom_admin:execute/types/particle
execute if data storage mc:_ temp.exec_action{type:"title"} run function custom_admin:execute/types/title
execute if data storage mc:_ temp.exec_action{type:"summon"} run function custom_admin:execute/types/summon
execute if data storage mc:_ temp.exec_action{type:"command"} run function custom_admin:execute/types/command
execute if data storage mc:_ temp.exec_action{type:"function"} run function custom_admin:execute/types/function_call
execute if data storage mc:_ temp.exec_action{type:"clear"} run function custom_admin:execute/types/clear
execute if data storage mc:_ temp.exec_action{type:"gamemode"} run function custom_admin:execute/types/gamemode
execute if data storage mc:_ temp.exec_action{type:"effect"} run function custom_admin:execute/types/effect
execute if data storage mc:_ temp.exec_action{type:"give"} run function custom_admin:execute/types/give

# Başarı mesajı
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"✅ Eylem çalıştırıldı: ","color":"green"},{"text":"$(id)","color":"yellow"}]

# Log
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem yürütüldü: ","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":" tarafından ","color":"gray"},{"selector":"@s","color":"aqua"}]