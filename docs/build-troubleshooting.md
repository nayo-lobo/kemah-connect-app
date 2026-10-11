# Catatan Debugging: `flutter run` Gagal Build (Android)

> Dokumen ini merangkum proses diagnosis saat `flutter run` gagal dengan tumpukan
> error yang menakutkan (crash + ribuan baris stack trace). Tujuannya buat belajar:
> **cara membaca error build, dan kenapa akarnya seringkali bukan di kode kita.**

Tanggal kejadian: 2026-06-09 · Flutter 3.44.1 · Dart 3.12.1 · Windows 11

---

## TL;DR

Build gagal karena **4 masalah environment yang menumpuk** — bukan bug di kode Dart.
Dikupas satu per satu sampai jalan:

| # | Masalah | Gejala di log | Solusi |
|---|---------|---------------|--------|
| 1 | Windows Developer Mode mati | `Building with plugins requires symlink support` | Aktifkan Developer Mode |
| 2 | `compileSdk` ketinggalan | `21 issues ... requires compile against version 34` | Upgrade `syncfusion_flutter_pdfviewer` ke 33.x |
| 3 | Cache Flutter SDK korup | `===== CRASH =====`, const-eval error di `dart:ui` | Hapus `bin\cache`, `flutter precache` |
| 4 | **Project (D:) & pub cache (C:) beda drive** | `Could not close incremental caches` / `different roots` | `kotlin.incremental=false` |

**File yang akhirnya diubah:** `pubspec.yaml`, `android/gradle.properties`.

---

## Cara membaca log error build yang panjang

Pelajaran pertama: **jangan panik lihat 700 baris stack trace.** Strateginya:

1. **Cari baris paling bawah dulu.** Build tool selalu menaruh ringkasan kegagalan
   di akhir: `FAILURE: Build completed with N failures` → `What went wrong` →
   `Execution failed for task ':xxx'`. Itu yang penting.
2. **`Caused by:` dan `Suppressed:` adalah petunjuk akar.** Stack trace Java/Kotlin
   menumpuk dari atas (gejala) ke `Caused by` (akar). Yang paling dalam = paling dekat
   ke penyebab asli.
3. **Bedakan WARNING vs ERROR.** Contoh warning `KGP / device_info_plus` muncul tiap
   build tapi **tidak** menggagalkan apa pun — abaikan.
4. **Analogi web:** mirip baca stack trace Webpack/Vite. Pesan pertama yang merah
   panjang sering cuma "turunan"; scroll ke `Module not found:` / baris paling
   spesifik untuk tahu file & sebab sebenarnya.

---

## Masalah 1 — Developer Mode (symlink)

**Log:**
```
Building with plugins requires symlink support.
Please enable Developer Mode in your system settings.
```

**Kenapa:** Flutter di Windows menautkan tiap plugin pakai *symlink*. Membuat symlink
tanpa hak admin hanya diizinkan kalau **Developer Mode** aktif. `flutter clean`
menghapus symlink lama; saat rebuild tak bisa dibuat ulang → gagal.

**Analogi web:** mirip `pnpm` yang pakai symlink di `node_modules` — di Windows butuh
privilege khusus.

**Solusi:** Settings → For developers → Developer Mode → **On**. (Atau buka cepat:
`start ms-settings:developers`.)

---

## Masalah 2 — `compileSdk` ketinggalan zaman

**Log:**
```
Execution failed for task ':syncfusion_flutter_pdfviewer:checkDebugAarMetadata'.
> 21 issues were found when checking AAR metadata:
  Dependency ':device_info_plus' requires ... compile against version 34 or later
  :syncfusion_flutter_pdfviewer is currently compiled against android-31.
```

**Kenapa:** Plugin `syncfusion_flutter_pdfviewer` versi **27.x** (lama) di-compile
terhadap Android SDK **31**, tapi dependency lain yang ikut ketarik (`device_info_plus`,
`androidx.*`) mewajibkan **compileSdk 34+**. Gradle menolak.

**Analogi web:** seperti sebuah package npm yang `peerDependency`-nya minta React 18,
tapi kamu masih React 16 — install ditolak sampai versinya cocok.

**Solusi:** upgrade plugin yang ketinggalan. Di `pubspec.yaml`:
```yaml
# sebelum
syncfusion_flutter_pdfviewer: ^27.2.2
# sesudah
syncfusion_flutter_pdfviewer: ^33.2.10
```
lalu `flutter pub get`.

> Alternatif (kalau plugin tak bisa di-upgrade): paksa `compileSdk` lebih tinggi di
> `android/app/build.gradle.kts`.

---

## Masalah 3 — Cache Flutter SDK korup

**Log:**
```
===== CRASH =====
ExceptionCode=-1073741819   (0xC0000005 = access violation / segfault)
... FfiTransformer / ConstantEvaluator ...

# atau, error const yang "mustahil" di kode SDK sendiri:
.../animated_icons_data.dart: Error: Constant evaluation error
geometry.dart: The variable '_dx' is not a constant
  const OffsetBase(this._dx, this._dy);
```

**Kenapa:** Dua gejala ini — compiler **segfault di lokasi acak**, dan compiler
mengeluh kode SDK Flutter yang jelas valid "bukan konstanta" — sama-sama menandakan
**binary compiler di `C:\develop\flutter\bin\cache` korup** (sering karena antivirus
mengunci/quarantine file saat Flutter mengunduhnya). Versinya benar, tapi isi byte-nya
rusak.

**Analogi web:** seperti `node_modules/.bin` atau cache `.vite` yang korup — Node
crash dengan error ngawur sampai cache-nya dibuang dan dipasang ulang.

**Solusi:**
```powershell
# matikan proses yang mengunci dulu
Get-Process dart,java -EA SilentlyContinue | Stop-Process -Force
# hapus cache SDK lalu unduh ulang
Remove-Item -Recurse -Force C:\develop\flutter\bin\cache
flutter precache --android --universal
```

---

## Masalah 4 — AKAR SEBENARNYA: project & pub cache beda drive

**Log (petunjuk emas):**
```
java.lang.IllegalArgumentException: this and base files have different roots:
C:\Users\yosry\AppData\Local\Pub\Cache\...\device_info_plus-12.4.0\...\DeviceInfoPlusPlugin.kt
  and
D:\code\gmit_jemaat_kemah_airnona_app\android
    at kotlin...RelocatableFileToPathConverter.toPath
    ...
> Could not close incremental caches in ...
```

**Kenapa:**
- Project ada di drive **`D:`**
- Pub cache (tempat sumber plugin) ada di drive **`C:`**

Kotlin *incremental compiler* menyimpan path secara **relatif** demi portabilitas.
Ia menghitung `File.relativeTo()` dari folder project (`D:\...`) ke file plugin
(`C:\...`). **Di Windows tidak ada path relatif antar drive berbeda** → lempar
`IllegalArgumentException` → cache gagal ditutup → task Kotlin gagal.

Inilah biang error `Could not close incremental caches` yang muncul **berulang** dari
awal, dan besar kemungkinan ikut memicu crash compiler yang tampak acak.

**Analogi web:** bayangkan tool yang menyimpan import sebagai path relatif, lalu kodemu
di `D:\` meng-import file di `C:\`. Tidak ada `../` yang menyeberangi drive di Windows,
jadi tool-nya error saat menulis cache.

**Solusi cepat (yang dipakai)** — matikan incremental compilation Kotlin, di
`android/gradle.properties`:
```properties
kotlin.incremental=false
```
Tanpa incremental, tidak ada penghitungan path relatif lintas-drive. Konsekuensi: build
Kotlin sedikit lebih lambat (recompile penuh), tapi stabil.

**Solusi paling rapi (jangka panjang, opsional)** — taruh project & pub cache di drive
yang sama, mis. set `PUB_CACHE` ke path di `D:`:
```powershell
setx PUB_CACHE "D:\pub-cache"
# lalu buka terminal baru dan jalankan:
flutter pub get
```

---

## Urutan langkah pamungkas (kalau kejadian lagi)

```powershell
# 1. Pastikan Developer Mode ON (sekali saja, permanen)
start ms-settings:developers

# 2. Matikan daemon yang menggantung / mengunci file
Get-Process dart,java,kotlin* -EA SilentlyContinue | Stop-Process -Force

# 3. (kalau compiler crash/ngawur) repair cache SDK
Remove-Item -Recurse -Force C:\develop\flutter\bin\cache
flutter precache --android --universal

# 4. Bersihkan build project & jalankan
flutter clean
flutter pub get
flutter run -d emulator-5554
```

Konfigurasi permanen yang sudah ada di repo: `kotlin.incremental=false`
(`android/gradle.properties`) dan syncfusion 33.x (`pubspec.yaml`).

---

## Pelajaran inti

1. **Tumpukan error ≠ satu masalah.** Sering beberapa masalah environment berlapis;
   perbaiki dari error yang *paling jelas dulu*, build ulang, lihat error berikutnya.
2. **Segfault / error "mustahil" di kode SDK = curigai toolchain/cache, bukan kodemu.**
3. **Error build Android ada di dua dunia:** Gradle/Kotlin (Java stack trace) dan Dart
   (kernel/const). Kenali dari nama task: `:xxx:compileDebugKotlin` (Android) vs
   `compileFlutterBuildDebug` / `kernel_snapshot` (Dart).
4. **Petunjuk akar biasanya di baris `Caused by:` / `Suppressed:` paling spesifik** —
   di sinilah `different roots` muncul dan membongkar masalah beda-drive.
5. **Path absolut di pesan error itu informasi, bukan sekadar noise** — `C:\...` vs
   `D:\...` justru kunci yang memecahkan kasus ini.
```
