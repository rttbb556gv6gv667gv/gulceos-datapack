$tellraw $(player) $(msg)
$playsound $(sound) player $(player)
$data modify storage userfunc:log actions set value {"msg":'$(msg)',"player":"$(player)","sound":"$(sound)"}