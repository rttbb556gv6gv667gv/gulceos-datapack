execute if data storage custom:storage {"sb":{"triggers":"ap_help-menu","action":"add"}} run scoreboard objectives add ap_help-menu trigger
execute if data storage custom:storage {"sb":{"triggers":"ap_help-menu","action":"delete"}} run scoreboard objectives remove ap_help-menu
$data merge storage custom:storage {"sb":{"triggers":"ap_help-menu","action":"$(action)"}}