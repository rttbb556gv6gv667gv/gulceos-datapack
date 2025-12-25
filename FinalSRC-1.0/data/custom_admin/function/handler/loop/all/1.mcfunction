# ═══════════════════════════════════════════════════
# GULCE Admin Power - Main Tick Loop
# ═══════════════════════════════════════════════════

# Trigger kontrolü
execute as @a[scores={gulce_trigger=1..}] run function custom_admin:run/trigger

# Ana döngüleri çalıştır
function custom_admin:handler/loop/main
function custom_admin:handler/loop/permissions
function custom_admin:group/check
