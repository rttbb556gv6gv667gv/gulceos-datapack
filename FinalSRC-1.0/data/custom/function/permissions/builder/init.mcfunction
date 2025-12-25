$tag $(Player) add Builder
team modify Builder color gray
team modify Builder prefix {"text":"[Builder] ","color":"green"}
$team join Builder $(Player)
$scoreboard players reset $(Player) ap_give_tools
$scoreboard players reset $(Player) ap_clear_weather
$scoreboard players reset $(Player) ap_main_menu
$scoreboard players reset $(Player) ap_lp_menu
$scoreboard players reset $(Player) ap_rain_weather
$scoreboard players reset $(Player) ap_toggle_day
$scoreboard players reset $(Player) ap_toggle_night
$scoreboard players reset $(Player) ap_feed_self
$scoreboard players reset $(Player) ap_heal_self
$scoreboard players reset $(Player) ap_speed_boost
$scoreboard players reset $(Player) ap_creative
$scoreboard players reset $(Player) ap_sethome
$scoreboard players reset $(Player) ap_home
$scoreboard players reset $(Player) ap_starter_pack
$scoreboard players reset $(Player) ap_actions
$scoreboard players reset $(Player) ap_logs
$scoreboard players reset $(Player) ap_kill_all_mobs
$scoreboard players reset $(Player) ap_survival
$scoreboard players reset $(Player) ap_add_xp
$scoreboard players reset $(Player) ap_spectator
$scoreboard players reset $(Player) ap_adventure
$scoreboard players reset $(Player) ap_fill_area
$scoreboard players reset $(Player) permission_level
$scoreboard players reset $(Player) ap_run
$tag $(Player) remove Owner
$tag $(Player) remove op