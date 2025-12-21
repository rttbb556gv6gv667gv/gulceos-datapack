# ═══════════════════════════════════════════════════
# Player Data - Oyuncu verilerini ve eylemleri depolar
# ═══════════════════════════════════════════════════

# Oyuncu verilerini al
data modify storage mc:_ temp.player set from storage mc:handler data.players[0]

# İzinleri kontrol et
execute if data storage mc:_ temp.player.permissions[0] run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzinleriniz yüklendi.","color":"green"}]

# Eylemleri yükle
execute if data storage mc:_ temp.player.actions[0] run function custom_admin:run_actions with storage mc:_ temp.player.actions[0]