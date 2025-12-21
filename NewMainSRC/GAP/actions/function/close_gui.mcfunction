$data merge storage custom:storage {"name":"$(name)","open_gui":0b}
$execute at $(name) if data storage custom:storage {"name":"$(name)","open_gui":0b} run dialog clear $(name)
$tellraw @a "$(name) İÇİN GUI KAPATILDI!"
playsound minecraft:ui.loom.select_pattern player @s