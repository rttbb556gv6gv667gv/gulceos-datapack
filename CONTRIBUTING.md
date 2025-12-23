# Katkı Kuralları

Bu proje vanilla Minecraft datapack mimarisi üzerine kuruludur.  
Katkılar memnuniyetle karşılanır; ancak belirli kurallar vardır. Amaç kaliteyi ve sürdürülebilirliği korumaktır.

## Genel Kurallar

- Her katkı Pull Request (PR) üzerinden yapılır.  
- Ana dal (main) doğrudan commit kabul etmez.  
- Küçük değişiklikler bile açıklamalı commit mesajı içermelidir.

## Kod Stili

- `.mcfunction` dosyaları tek sorumluluk ilkesine göre yazılmalıdır.  
- Komut zincirleri mümkün olduğunca bölünmeli, okunabilirlik önceliklidir.  
- `execute`, `schedule`, `data` gibi kritik komutlar yorum satırı ile açıklanmalıdır.  
- Macro kullanılıyorsa değişken adları anlamlı ve tutarlı olmalıdır.

## Dosya Yapısı

- Yeni sistemler rastgele klasör açılarak eklenmez.  
- Mevcut yapı takip edilmelidir:  
  - `Permissions/` → yetki ve rol sistemleri  
  - `DataPacks/` → bağımsız veya modüler datapack bileşenleri  
- Ortak kullanılan fonksiyonlar mümkünse merkezi bir alanda tutulur.

## Test Zorunluluğu

- Test edilmemiş PR kabul edilmez.  
- Testler şunları kapsamalıdır:  
  - Vanilla singleplayer  
  - En az bir dedicated server  
- "Bende çalıştı" yeterli değildir; hangi sürümde test edildiği belirtilmelidir.

## Minecraft Sürüm Politikası

- Proje sadece belirtilen Minecraft sürümleri ile uyumludur.  
- Geriye dönük uyumluluk garanti edilmez.  
- Snapshot veya deneysel özellik içeren PR'lar reddedilir.

> Bu kurallar, katkı sürecini düzenlemek ve proje kalitesini korumak içindir.
