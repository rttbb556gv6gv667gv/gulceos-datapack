# ═══════════════════════════════════════════════════
# GULCE Admin Power - Load Handler
# ═══════════════════════════════════════════════════

# Scoreboards oluştur
scoreboard objectives add gulce_trigger trigger "GULCE Trigger"
scoreboard objectives add gulce_cooldown dummy "GULCE Cooldown"
scoreboard objectives add gulce_id dummy "GULCE ID"
scoreboard objectives add gulce_timer dummy "GULCE Timer"

# Trigger'ı aktif et
scoreboard players enable @a gulce_trigger

# Başlangıç mesajı
tellraw @a ["",{"text":"════════════════════════════════","color":"aqua","bold":true},"\n",{"text":"  🎮 GULCE Admin Power ","color":"gold","bold":true},{"text":"v1.0.0","color":"yellow"},"\n",{"text":"  ⚡ Sistem başarıyla yüklendi!","color":"green"},"\n",{"text":"════════════════════════════════","color":"aqua","bold":true}]

# Load tamamlandı log
execute as @a[tag=gulce_admin] run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Yükleme tamamlandı. Timer başlatıldı.","color":"gray"}]

# Menüleri yükle
function custom_admin:handler/dialog/load/about