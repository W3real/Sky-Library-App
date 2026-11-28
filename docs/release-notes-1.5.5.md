# Sky Library v1.5.5

- RDR2 için açık kaynak `pingod/rdr2-linux-launcher` tabanlı **sahte Launcher.exe shim** eklendi (`tools/bypass/1174180/Launcher.cs`, derlenmiş `Launcher.exe`).
- Uygulama shim'i VDS shim manifesti (`/bypass/1174180/Launcher.exe`) üzerinden oyun köküne kopyalıyor ve Rockstar oturumu doğrulandıktan sonra onunla başlatıyor.
- Shim, RDR2'nin `ERR_NO_LAUNCHER` parent-process kontrolünü geçiyor; `\\.\pipe\RDR2Launcher_Pipe` üzerinden `INIT:` → `TINI:launcher:` cevabı veriyor; `RDR2.exe`'yi doğru cwd ve `-skipPatcherCheck @args.txt @commandline.txt -useSteam` argümanlarıyla açıyor.

**Sınır (net):** shim yalnızca launcher penceresi hatasını kaldırır. Oyun içindeki Rockstar yetki uyarısı (code 133 / "not entitled") shim ile çözülmez; RGL'ye giriş + bir kez çevrimiçi başlatma zorunlu. Bu olmadan oyun açılıp kısa süre sonra kapanır.

**İndirme:** `Sky.Librar.exe` — 109 MB

**SHA256:** `db99fa69acbb6da3f7a7e7d4e2fd181450eab039f131a71c6a97fa491feea5be`
