# ═══════════════════════════════════════════════════
# GLC Menu - Load Handler - DÜZELTİLDİ
# ═══════════════════════════════════════════════════

# Scoreboard
scoreboard objectives add gulce_menu trigger "GLC Menu"
scoreboard objectives add gulce_load.dialog dummy "Dialog Loading"

# Storage başlat
data modify storage mc:dialog ui set value {}
data modify storage mc:dialog temp set value {}

# ✅ YENİ: Tüm tag'leri temizle
tag @a remove glc.show_pending
tag @a remove closed.glc
tag @a remove glc.close_dialog

# ✅ YENİ: Tüm skorları sıfırla
scoreboard players set @a gulce_load.dialog -1

# Trigger aktif
scoreboard players enable @a gulce_menu

# Başlangıç mesajı
tellraw @a[tag=gulce_admin] ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"Dinamik menü sistemi yüklendi","color":"gray"}]