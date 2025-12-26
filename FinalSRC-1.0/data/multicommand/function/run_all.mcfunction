# data/multicommand/functions/run_all.mcfunction
# Tüm komutları çalıştır
data modify storage multicommand:temp list set from storage multicommand:data commands
function multicommand:run_loop