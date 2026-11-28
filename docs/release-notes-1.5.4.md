# Sky Library v1.5.4

Rockstar / RDR2 launcher'sız başlatma akışı yeniden düzenlendi.

- code 133 (RGL offline doğrulama) için ölü `bypass3` patch URL'leri kaldırıldı; hepsi 404 dönüyordu.
- `PlayRDR2.exe` (RGL min-mode → code 133) yerine RGL görünür açılıyor ve `socialclub.log` içinde geçerli oturum/aktivasyon bekleniyor.
- Oturum yoksa oyun sessizce hata vermek yerine net açıklama döndürüyor: RGL'ye giriş yap, "Beni hatırla / Otomatik giriş" ile bir kez çevrimiçi başlat, sonra tekrar dene veya Steam'de Oyna kullan.
- Oturum varsa `RDR2.exe`, `-skipPatcherCheck @args.txt @commandline.txt -useSteam` ile başlatılıyor.

Gerçek Steam kopyasında indirilebilir bir RGL patch'i yok; hesap/oturum zorunlu. Bu sürüm akışı doğru yönetiyor ve kullanıcıyı yönlendiriyor.

**İndirme:** `Sky.Librar.exe` — 109 MB

**SHA256:** `da364101d317d85fc46ed1e0dfe52a5f6a2f36174d65e708f9fe3363c2b175ad`
