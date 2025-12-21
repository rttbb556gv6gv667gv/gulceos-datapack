# permission_level 1 olanlar için
execute as @a[scores={permission_level=1}] run function custom:permissions/player/init

# permission_level 2 olanlar için
execute as @a[scores={permission_level=2}] run function custom:permissions/builder/init {Player:"@s"}

# permission_level 3 olanlar için
execute as @a[scores={permission_level=3}] run function custom:permissions/mod/init

# permission_level 4 olanlar için
execute as @a[scores={permission_level=4}] run function custom:permissions/admin/init {Player:"@s"}

# permission_level 5 olanlar için
execute as @a[scores={permission_level=5}] run function custom:permissions/owner/init {Player:"@s"}

# permission_level sıfırlama (tüm oyuncular)
scoreboard players set @a permission_level 0

# Etkinleştir
$scoreboard players enable @a[tag=$(tag)] permission_level