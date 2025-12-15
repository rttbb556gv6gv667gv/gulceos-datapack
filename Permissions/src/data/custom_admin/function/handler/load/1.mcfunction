# ═══════════════════════════════════════════════════
# GULCE Admin Power - Load Handler
# ═══════════════════════════════════════════════════

# Yedek Al
data modify storage mc:handler/backup data set from storage mc:handler
data modify storage mc:_/backup data set from storage mc:_
data modify storage mc:ui/backup data set from storage mc:ui


# Scoreboards oluştur
scoreboard objectives add gulce_trigger trigger "GULCE Trigger"
scoreboard objectives add gulce_cooldown dummy "GULCE Cooldown"
scoreboard objectives add gulce_id dummy "GULCE ID"
scoreboard objectives add gulce_timer dummy "GULCE Timer"

# Adım 2'ye Geç
schedule function custom_admin:handler/load/2 47t

# Trigger'ı aktif et
scoreboard players enable @a gulce_trigger

# Başlangıç mesajı
tellraw @a ["",{"text":"════════════════════════════════","color":"aqua","bold":true},"\n",{"text":"  🎮 GULCE Admin Power ","color":"gold","bold":true},{"text":"v1.0.0","color":"yellow"},"\n",{"text":"  ⚡ Sistem başarıyla yüklendi!","color":"green"},"\n",{"text":"════════════════════════════════","color":"aqua","bold":true}]

# Load tamamlandı log
execute as @a[tag=gulce_admin] run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Yükleme tamamlandı. Timer başlatıldı.","color":"gray"}]

# Menüleri yükle
function custom_admin:handler/dialog/load/about