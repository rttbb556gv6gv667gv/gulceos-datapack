# Dinamik action çalıştır
$execute store result storage mc:_ temp.events.value$(value) int 3 run function actions:$(type) $(value)

# Feedback
$execute store result storage mc:_ temp{feedback:"on"} int 1 run tellraw @s ["",{"text":"Tür: \n","color":"gray"},{"text":"$(type)","color":"yellow"},{"text":" → Başarılı","color":"green"}]

# Events (sırayla, döngüyle, noktasız macro!)
$execute store result storage mc:_ temp.events.message.contents.$(message) int 4 run tellraw @s $(message)
$execute store result storage mc:_ temp.events.sound.id."$(sound)" int 4 run playsound $(sound) master @s ~ ~ ~
$execute store result storage mc:_ temp.events.particle.id."$(particle)" int 4 run particle $(particle) ~ ~1 ~ 0.5 0.5 0.5 0.1 50
$execute store result storage mc:_ temp.events.title int 3 run title @s title $(title)
$execute store result storage mc:_ temp.events.summon int 3 run summon $(entity)

# Sonraki event'e geç (kendini tekrar çağır)
data remove storage mc:_ temp.events[0]