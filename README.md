## Tugas Mobile Development

| Branch | Detail |
| ----------- | ----------- |
| main | Technical Code Dart & FLutter |
| routing-and-navigation | Routing and Navigation |

Untuk menjalankan aplikasi:
1. Clone repository ini.
2. Di terminal, jalankan `flutter pub get` untuk mendapatkan dependencies.
3. Jalankan aplikasi dengan `flutter run`.

Aplikasi ini berjalan secara mandiri sebagai aplikasi client-side murni dengan data in-memory/mock model. Jika diintegrasikan ke backend:

1. Pastikan server MySQL lokal (seperti XAMPP/Laragon) aktif di port default 3306.
2. Impor berkas skema database schema.sql melalui phpMyAdmin.
3. Jalankan server API lokal dan sesuaikan URL endpoint pada konfigurasi HTTP client di aplikasi.