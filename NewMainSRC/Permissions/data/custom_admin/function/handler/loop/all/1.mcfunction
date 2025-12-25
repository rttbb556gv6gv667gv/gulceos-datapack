# ═══════════════════════════════════════════════════
# GULCE Admin Power - Main Tick Loop
# ═══════════════════════════════════════════════════

# Trigger kontrolü
execute as @a[scores={gulce_trigger=1..}] run function custom_admin:run/trigger

# Ana döngüleri çalıştır
function custom_admin:handler/loop/main
function custom_admin:handler/loop/permissions
function custom_admin:group/check

# Timer kontrolü
function custom_admin:handler/timer

# Cooldown azaltma

execute if predicate custom_admin:cooldown if score @s gulce_cooldown matches 1.. run scoreboard players remove @s gulce_cooldown 1
