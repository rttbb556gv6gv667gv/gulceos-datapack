# ═══════════════════════════════════════════════════
# İzin Kontrolü Loop'u
# ═══════════════════════════════════════════════════

# İzin verisi var mı kontrol et
execute if data storage mc:handler data.permissions[0] run function custom_admin:handler/parser/permissions

# Tag temizliği
tag @a remove gulce_permitted