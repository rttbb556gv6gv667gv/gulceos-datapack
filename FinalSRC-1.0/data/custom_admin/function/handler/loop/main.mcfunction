# ═══════════════════════════════════════════════════
# GULCE Admin Power - Main Tick Loop
# ═══════════════════════════════════════════════════

# Timer kontrolü
function custom_admin:handler/timer

# Cooldown azaltma

execute if predicate custom_admin:cooldown if score @s gulce_cooldown matches 1.. run scoreboard players remove @s gulce_cooldown 1
