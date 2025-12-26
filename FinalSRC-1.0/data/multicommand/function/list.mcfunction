# Kayıtlı komutları göster
tellraw @s {"text":"=== Kayıtlı Komutlar ===","color":"gold","bold":true}
tellraw @s {"nbt":"commands[]","storage":"multicommand:data","color":"aqua"}