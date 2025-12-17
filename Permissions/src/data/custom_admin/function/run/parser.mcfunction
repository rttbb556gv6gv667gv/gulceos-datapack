# ═══════════════════════════════════════════════════
# Run Parser - ID kontrolü ve eylem çalıştırma
# ═══════════════════════════════════════════════════

# ID var mı kontrol et
execute store result score #id_check gulce_id run data get storage mc:_ id

# ID varsa action çalıştır
execute if score #id_check gulce_id matches 1.. run function custom_admin:execute/action with storage mc:_ 

# ID yoksa hata ver
execute unless score #id_check gulce_id matches 1.. run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"HATA: ID bulunamadı!","color":"red"}]

# Log
tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Parser çalıştırıldı. ID: ","color":"gray"},{"score":{"name":"#id_check","objective":"gulce_id"},"color":"yellow"}]