$data modify storage admin:home id."$(id)".pos set from entity @s Pos
$data modify storage admin:home id."$(id)".dim set from entity @s Dimension
$title @s actionbar {"text":"Home kaydedildi: $(id)","color":"green"}
