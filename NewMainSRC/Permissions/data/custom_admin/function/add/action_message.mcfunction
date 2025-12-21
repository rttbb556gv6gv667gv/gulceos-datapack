$data modify storage mc:handler data.actions append value {id:"$(id)",type:"message",params:{text:"$(text)"},player:"$(player)"}

$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"✅ Mesaj eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]

$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem eklendi: ","color":"gray"},{"text":"$(id)","color":"yellow"}]