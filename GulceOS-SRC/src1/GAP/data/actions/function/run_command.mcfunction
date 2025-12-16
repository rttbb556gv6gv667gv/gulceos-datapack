$$(run)
$playsound $(sound) player $(player)
$data modify storage userfunc:log actions set value {"command":'$(run)',"player":"$(player)","sound":"$(sound)"}