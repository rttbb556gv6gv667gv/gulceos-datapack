# ═══════════════════════════════════════════════════
# Load About Menu
# ═══════════════════════════════════════════════════

dialog show @p[tag=gulce_admin] {"type":"minecraft:notice","title":"ℹ️ Hakkında","body":{"type":"minecraft:plain_message","contents":"§l§6=== GULCE Admin Power ===\n\n§bVersiyon: §ev1.0.0\n§bPack Format: §e48 (1.21+)\n§bYapımcı: §eGULCE Dev Team\n\n§a📦 Özellikler:\n§7• Gelişmiş izin sistemi\n§7• Dinamik eylem yönetimi\n§7• Macro tabanlı komutlar\n§7• Cooldown ve timer sistemi\n§7• Dialog/GUI desteği\n\n§e⚡ Bu paket tamamen özelleştirilebilir.\n§7Storage ve macro sistemi ile sınırsız genişletilebilir.\n\n§c❤️ Teşekkürler!"},"can_close_with_escape":true,"pause":false,"action":{"label":"◀️ Geri","action":{"type":"minecraft:suggest_command","command":" "}}}

tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Hakkında menüsü yüklendi.","color":"gray"}]