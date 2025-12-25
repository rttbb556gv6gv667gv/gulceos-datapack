$summon $(Entity) ~ ~ ~ $(NBT)
$playsound $(sound) player $(player)
$data modify storage userfunc:log actions set value {"entity":"$(Entity)","sound":"$(sound)","nbt":'$(NBT)'}