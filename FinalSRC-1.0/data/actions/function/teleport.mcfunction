$tp $(Player1) $(Player2)
$playsound $(sound) player $(player)
$data modify storage userfunc:log actions set value {"players":["$(Player1)","$(Player2)"],"sound":"$(sound)"}