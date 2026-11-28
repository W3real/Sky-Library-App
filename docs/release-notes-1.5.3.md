# Sky Library v1.5.3

- **Rockstar oyunları için launcher'sız başlatma düzeltildi:** RDR2'de `ERR_NO_LAUNCHER` veren doğrudan `RDR2.exe` çağrısı yerine, Steam'in kullandığı `PlayRDR2.exe` giriş noktası tercih ediliyor.
- Rockstar Games Launcher arka planda (min-mode) otomatik başlatılıyor; `prelaunch.txt` olmasa da oyun kökündeki `Redistributables\Rockstar-Games-Launcher.exe` veya kurulu launcher bulunuyor.
- GTA V için `PlayGTAV.exe`, RDR2 için `PlayRDR2.exe` öncelikli. `RDR2.exe` doğrudan çağrılırsa `-skipPatcherCheck @args.txt @commandline.txt -useSteam` argümanları kullanılıyor.
- Aynı akış diğer Rockstar AppID'leri için de geçerli.

**İndirme:** `Sky.Librar.exe` — 109 MB

**SHA256:** `417220ea624956e6f4bf5e333c5d8fdfd247c7985d83c9f19e4d33c882dfe9de`
