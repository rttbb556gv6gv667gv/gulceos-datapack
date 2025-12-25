# ═══════════════════════════════════════════════════
# GLC Menu - Tick Handler - DÜZELTİLDİ
# ═══════════════════════════════════════════════════

# Trigger kontrolü
execute as @a[scores={gulce_menu=1..}] run function glc_menu:handler/trigger

# Loading skorları azalt
scoreboard players remove @a[scores={gulce_load.dialog=1..}] gulce_load.dialog 1

# ✅ YENİ: Sadece 0'a düştüğünde BİR KEZ göster
execute as @a[scores={gulce_load.dialog=0},tag=glc.show_pending] run function glc_menu:handler/dialog/show

# Tag temizliği
tag @a[tag=closed.glc] remove closed.glc