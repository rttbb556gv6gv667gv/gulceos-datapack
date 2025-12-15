# Ana storage yapısını oluştur
data modify storage mc:handler data set value {"triggers":[],"actions":[],"permissions":[],"types":[],"meta":[{"version":"1.0.0","type":"DataPack","enabled":["all"]}]}

# Menüleri Hazırla
function custom_admin:handler/dialog/main

# Geçici storage
data modify storage mc:_ temp set value {}

# UI storage
data modify storage mc:ui ui set value {}