# Tek bir komutu çalıştır ve listeden çıkar
data modify storage multicommand:temp current set from storage multicommand:temp list[0]
data remove storage multicommand:temp list[0]
function multicommand:execute with storage multicommand:temp current
execute if data storage multicommand:temp list[0] run function multicommand:run_loop