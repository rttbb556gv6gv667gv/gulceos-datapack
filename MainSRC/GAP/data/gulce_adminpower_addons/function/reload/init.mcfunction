# Mesaj At
tellraw @a [{"text":"[AdminPower]: "},{"text":"Yeniden yükleniyor!","color":"gold"}]

# Yeniden Yükle
$datapack disable "file/GulceOS-Core_v$(Version).zip"
$datapack enable "file/GulceOS-Core_v$(Version).zip"

# Başarı Mesajı At
schedule function gulce_adminpower_addons:reload/2 20t