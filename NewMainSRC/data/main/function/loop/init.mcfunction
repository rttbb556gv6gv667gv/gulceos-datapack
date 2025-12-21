# === MAIN TICK DISPATCHER ===

# Adım 1: Fonksiyonları Sırayla Çağır (Gecikmesiz)
function glc_menu:handler/tick
function custom_admin:handler/loop/all/1
function global:tick

# Adım 2: Ana Döngü (Artık Kesin Çalışır)
function main:loop/init