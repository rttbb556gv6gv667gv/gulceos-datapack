# [GulceOS] Başlatıcı
# ---------------------------------------------------------

# 1. VARSAYILAN DEĞER KONTROLÜ
# Config yolu yoksa güvenli bir şekilde oluşturur
execute unless data storage mc:config Config run data merge storage mc:config {Config:{Enabled:0b}}

# 2. DURUM KONTROLÜ & ERKEN ÇIKIŞ
# Eğer sistem zaten 1b (aktif) ise, işlemi burada keser ve aşağıdaki hiçbir komutu okumaz.
execute if data storage mc:config {Config:{Enabled:1b}} run return run tellraw @s {"text":"[GulceOS] ZATEN ETKİN!","color":"red","bold":true}

# 3. AKTİVASYON
# Kontrolü geçtiyse sistem kapalıdır, şimdi açıyoruz.
data modify storage mc:config Config.Enabled set value 1b
tellraw @a {"text":"[GulceOS] Hazırlanıyor...","color":"yellow"}

# 4. ŞARTLI FONKSİYON TETİKLEME
# 'execute if' kullanarak verinin başarıyla 1b olduğundan emin olarak çalıştırırız.
execute if data storage mc:config {Config:{Enabled:1b}} run function main:load/init
execute if data storage mc:config {Config:{Enabled:1b}} run data merge storage mc:trg {ui:1}
execute if data storage mc:config {Config:{Enabled:1b}} run function #multicommand:init

# 5. BİTİŞ VE GERİ BİLDİRİM
# Başarı mesajı sadece işlemler tamamlandığında @a (herkese) gider.
execute if data storage mc:config {Config:{Enabled:1b}} run playsound minecraft:block.stone_button.click_off master @a ~ ~ ~ 1 1 1
execute if data storage mc:config {Config:{Enabled:1b}} run tellraw @a ["",{"text":"[GulceOS] ","color":"dark_aqua"},{"text":"Sistem hazır! ✅","color":"green"}]
