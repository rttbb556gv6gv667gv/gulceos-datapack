# ═══════════════════════════════════════════════════
# Action Parser - Eylemleri ayrıştırır
# ═══════════════════════════════════════════════════

# ID var mı kontrol et
execute if data storage mc:_ {id:true} run function custom_admin:run_actions with storage mc:handler data.actions[0]

# Action'ı işaretle
data modify storage mc:_ temp.action_processed set value 1b

# Feedback
execute if data storage mc:_ temp{feedback:"on"} run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem başarıyla işlendi.","color":"green"}]