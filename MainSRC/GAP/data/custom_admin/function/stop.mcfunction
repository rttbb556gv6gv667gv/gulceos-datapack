# Starting Cleanup
me §b[GulceOS] §cStopping...
data modify storage custom:storage Starter set value {"type":"stopping"}

# Remove Scoreboards
me §b[GulceOS] §cRemoving Scoreboards...
scoreboard objectives remove ap_clear_weather
scoreboard objectives remove ap_feed_self
scoreboard objectives remove ap_give_tools
scoreboard objectives remove ap_heal_self
scoreboard objectives remove ap_rain_weather
scoreboard objectives remove ap_speed_boost
scoreboard objectives remove ap_toggle_day
scoreboard objectives remove ap_toggle_night
scoreboard objectives remove ap_logs
scoreboard objectives remove ap_actions
scoreboard objectives remove ap_survival
scoreboard objectives remove ap_adventure
scoreboard objectives remove ap_spectator
scoreboard objectives remove ap_add_xp
scoreboard objectives remove ap_kill_all_mobs
scoreboard objectives remove ap_run
scoreboard objectives remove ap_lp_menu
scoreboard objectives remove ap_creative
scoreboard objectives remove ap_main_menu
scoreboard objectives remove ap_sethome
scoreboard objectives remove ap_home
scoreboard objectives remove ap_fill_area
scoreboard objectives remove ap_time_day
scoreboard objectives remove ap_gamemode_creative
scoreboard objectives remove permission_level
scoreboard objectives remove ap_config
scoreboard objectives remove permission_level

# Remove / Reset Storages
me §b[GulceOS] §cClearing Storages...
data remove storage custom:storage Starter
data remove storage userfunc:log actions
data remove storage userfunc:log errors
data remove storage userfunc:log Player
data remove storage userfunc:data World
data remove storage custom:storage mode
data remove storage custom:storage Starter
data remove storage custom:storage {Temp:{Macro:{}}}

# Disable / Reset Modules
me §b[GulceOS] §cDisabling Modules...
# Burada fonksiyonları durdurmak / resetlemek mantığı için sadece log / tag temizliği yapılabilir
tag @a remove op
data remove storage custom:storage value
tag @a remove Owner
data remove storage custom:storage sb
data get storage custom:storage Starter
data remove storage custom:storage Data
tag @a remove mod
data remove storage custom:storage Action
tag @a remove Builder
schedule clear gulce_adminpower_addons:loop
data remove storage custom:storage Temp
data remove storage custom:storage Log

# Finished Cleanup
me §b[GulceOS] §aData Pack Stoped
data modify storage custom:storage Starter set value {"type":"done_reset"}