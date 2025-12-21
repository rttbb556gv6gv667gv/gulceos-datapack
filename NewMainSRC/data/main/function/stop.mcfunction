# [GulceOS] Sistemi Kapatılıyor...
# ---------------------------------------------------------

# 1. DURUM KONTROLÜ
# Sistem zaten kapalıysa işlemi durdur (gereksiz komut kalabalığını önler)
execute unless data storage mc:config {Config:{Enabled:1b}} run return run tellraw @s {"text":"[GulceOS] SİSTEM ZATEN KAPALI!","color":"yellow"}

# 2. GÖRSEL VE SESLİ BİLDİRİM
tellraw @a {"text":"[GulceOS] Sistem devre dışı bırakılıyor...","color":"red"}
playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 1 0.5 1

# 3. VERİLERİ TEMİZLE
# Enabled değerini 0 yap ve config storage'ı tamamen sil
data modify storage mc:config Config.Enabled set value 0b
data remove storage mc:config Config
data remove storage mc:trg ui

# 4. SKORLARI TEMİZLE (Toplu Silme)
scoreboard objectives remove gulce_click
scoreboard objectives remove gulce_menu
scoreboard objectives remove gulce_load.dialog
scoreboard objectives remove gulce_cooldown
scoreboard objectives remove gulce_id
scoreboard objectives remove gulce_perm
scoreboard objectives remove gulce_timer
scoreboard objectives remove gulce_trigger

# AP Skorları
scoreboard objectives remove ap_gamemode
scoreboard objectives remove ap_cc
scoreboard objectives remove ap_help
scoreboard objectives remove ap_homeGUI
scoreboard objectives remove ap_rain
scoreboard objectives remove ap_update
scoreboard objectives remove ap_time

# 5. ZAMANLANMIŞ GÖREVLERİ DURDUR
schedule clear global:tick
schedule clear main:loop/init

# 6. ÖZEL DURDURMA FONKSİYONU
# Eğer admin panelinde özel bir durdurma işlemi varsa onu tetikle
function custom_admin:stop

tellraw @s {"text":"[GulceOS] Tüm veriler ve skorlar başarıyla temizlendi. ✅","color":"green"}