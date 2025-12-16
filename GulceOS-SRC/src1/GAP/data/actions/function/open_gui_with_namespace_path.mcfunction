$dialog show $(player) $(dialog)
$tellraw $(player) '📜 Menü açıldı: $(dialog)'
$data modify storage userfunc:log actions set value {"player":"$(player)","dialog":"$(dialog)"}