# Decrease ui_click counters slowly to allow repeated use without spam
function custom:permissions/admin/tick
function custom:permissions/owner/tick
scoreboard objectives add permission_level trigger
function custom:permissions/enable_admin_triggers
function gulce_adminpower_addons:help_menu/enable/1 {"tag":"op"}
function custom:permissions/enable_owner_triggers
function gulce_adminpower_addons:permission_level/tick {"tag":"mod"}
function custom:permissions/mod/tick
scoreboard players enable @a[tag=op] permission_level
data modify storage custom:storage Log set from storage userfunc:log
function custom:permissions/builder/tick
data modify storage custom:storage Data set from storage userfunc:data
function gulce_adminpower_addons:help_menu/tick
schedule function gulce_adminpower_addons:loop 1t replace