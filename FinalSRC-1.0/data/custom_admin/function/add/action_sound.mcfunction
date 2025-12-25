$data modify storage mc:handler data.actions append value {id:"$(id)",type:"sound",params:{sound:"$(sound)",volume:"$(volume)",pitch:"$(pitch)"},player:"$(player)"}

$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"✅ Ses eklendi: ","color":"green"},{"text":"$(sound)","color":"yellow"}]

$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem eklendi: ","color":"gray"},{"text":"$(id)","color":"yellow"}]