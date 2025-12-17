# ═══════════════════════════════════════════════════
# Permission Parser - İzinleri kontrol eder
# ═══════════════════════════════════════════════════

# İzin listesini kontrol et
execute store result score #permission_check gulce_id run data get storage mc:handler data.permissions

# İzni olan oyuncuları işaretle
execute as @a if score @s gulce_id = #permission_check gulce_id run tag @s add gulce_permitted

# Log
execute as @a[tag=gulce_permitted] run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin doğrulandı.","color":"green"}]