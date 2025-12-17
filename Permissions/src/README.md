# GULCE Admin Power – Beni Oku

Bu datapack, **vanilla Minecraft** için geliştirilmiş **gelişmiş izin ve eylem yönetim sistemidir**.

* Mod gerekmez
* Komut blokları gerekmez
* Klasik `/op` karmaşasına alternatif olarak tasarlanmıştır

Pack açıklaması (`pack.mcmeta`) zaten kısa özeti verir:

**GULCE Admin Power v1.0.0 – Gelişmiş İzin ve Eylem Yönetim Sistemi**

---

## 📁 Kurulum Şekli (Önemli)

Bu datapack **ZIP olarak değil**, **klasör yapısı korunarak** yüklenmelidir.

Repo içeriği şu mantıkla hazırlanmıştır:

```
src/
├── pack.mcmeta
└── data/
    └── ...
```

---

## ✅ Doğru Kurulum

1. Repo’yu indirin (`Download ZIP` veya `git clone`)
2. İçindeki **src klasörünü** şu dizine kopyalayın:

```
world/datapacks/
```

3. Oyunda şu komutu çalıştırın:

```
/reload
```

> ZIP’e çevirmenize gerek yoktur.
> Klasör yapısı bozulursa datapack yüklenmez.

---

## 🎮 Uyumluluk

* Minecraft sürümü: **Pack Format 88 (1.21.10)**
* Vanilla uyumlu
* Realms uyumlu
* Modlu sunucular **desteklenmez**

Belirtilen sürüm dışında çalışması **garanti edilmez**.

---

## ⚙️ Sistem Mantığı (Kısa)

* Yetkiler **merkezi bir yapıdan** yönetilir
* GUI sistemleri **yalnızca arayüzdür**, yetki vermez
* Admin eylemleri oyuncu etkileşiminden **izole edilmiştir**
* **Macro + storage** yapısı ile **performans odaklıdır**

Bu datapack **“kolay olsun” diye değil**,
**kontrollü ve güvenli olsun** diye yazılmıştır.
