# Storage
data modify storage custom:storage Starter set value {"type":"loading_storage"}
data modify storage userfunc:log actions set value []
data modify storage userfunc:log errors set value []
data modify storage userfunc:log Player set from entity @s[type=minecraft:player] UUID
data merge storage custom:storage {Temp:{Macro:{}}}
data modify storage userfunc:data World set value {Spawn:{X:"",Y:"",Z:""},GameMode:"",Time:"",Seed:"",Type:"",DataPacks:{Enabled:"",Disabled:""},Difficulty:"",Weather:{Type:"",Duration:""}}

function gulce_adminpower_addons:config/load3 {"load_second":"22","loop":"1",DisplayRules:"0b","cl_second":"50","diamond_to_emerald_recipe":"take","level":1,"TriggerHelpCommand":"remove","load":"empty",log_type:"empty",mode:"off",time:"day",log:"1",difficulty:"easy",xp:"empty"}
execute unless entity @s[tag=op] run function custom:permissions/player/init
execute unless entity @s[tag=Owner] run function custom:permissions/player/init
execute unless entity @s[tag=mod] run function custom:permissions/player/init
execute unless entity @s[tag=Builder] run function custom:permissions/player/init

me §b[GulceOS] §aData Pack Loaded
data modify storage custom:storage Starter set value {"type":"done"}

tellraw @a[tag=op] ["["," ",{"text":"Stop","click_event":{"action":"run_command","command":"/function custom_admin:stop"},"hover_event":{"action":"show_text","value":"Click to Stop!"}}," ","]"]
