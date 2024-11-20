Mengapa Kita Perlu Membuat Model untuk Pengambilan atau Pengiriman Data JSON?
Model diperlukan untuk mempermudah pengelolaan data yang terstruktur saat melakukan pengambilan atau pengiriman JSON. Dengan adanya model, kita dapat:

Menjamin Konsistensi Data: Model membantu menjaga format data yang diterima atau dikirim agar sesuai dengan struktur yang diharapkan.
Memudahkan Validasi: Dengan model, kita dapat melakukan validasi data secara otomatis, mengurangi kemungkinan error.
Menghindari Redundansi: Model mengurangi kebutuhan untuk menulis ulang logika parsing atau serialisasi data di berbagai tempat dalam kode.
Apakah akan terjadi error jika tidak membuat model terlebih dahulu?

Tidak selalu terjadi error, tetapi risiko kesalahan data meningkat. Misalnya:

Format data yang tidak konsisten dapat menyebabkan parsing gagal.
Data mungkin tidak divalidasi dengan benar, sehingga aplikasi menjadi rawan bug.
Fungsi Library http
Library http pada Flutter digunakan untuk melakukan request HTTP ke server, baik untuk pengambilan (GET) maupun pengiriman (POST, PUT, DELETE) data. Fungsinya meliputi:

Mengirim Request ke Server: Mengelola komunikasi dengan server, seperti mengambil data JSON atau mengirim formulir.
Menerima Response dari Server: Memproses response dari server, seperti mem-parsing body response menjadi objek Dart.
Mengelola Header dan Parameter: Menambahkan header, token, atau parameter lainnya untuk autentikasi dan kebutuhan lainnya.
Fungsi dari CookieRequest
CookieRequest adalah implementasi untuk mengelola sesi berbasis cookie di aplikasi. Fungsinya meliputi:

Menyimpan Informasi Sesi: Menyimpan cookie yang digunakan untuk autentikasi atau pelacakan sesi pengguna.
Mempermudah Komunikasi: Mengurangi kebutuhan untuk menyertakan token atau data sesi secara manual di setiap request.
Mengelola Keamanan: Memastikan bahwa cookie yang dikirimkan aman dan sesuai dengan standar.
Mengapa CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter?

Karena CookieRequest berisi informasi sesi pengguna, semua komponen yang memerlukan data autentikasi (seperti halaman dashboard atau profil) membutuhkan instance yang sama untuk menjaga sinkronisasi.

Mekanisme Pengiriman Data (Dari Input hingga Ditampilkan di Flutter)
Input Data oleh Pengguna:

Pengguna mengisi data melalui form di Flutter.
Data ini dikonversi menjadi JSON menggunakan model Dart.
Pengiriman Data ke Backend:

Menggunakan library http atau CookieRequest, data dikirim sebagai POST request ke server Django.
Server memproses data, menyimpannya ke database, dan mengembalikan response.
Pengambilan dan Menampilkan Data:

Flutter mengirimkan GET request ke server untuk mengambil data yang disimpan.
Response JSON diubah kembali menjadi objek Dart dan ditampilkan di UI.
Mekanisme Autentikasi (Login, Register, Logout)
Register:

Data akun dikirim melalui POST request ke Django.
Django memvalidasi dan menyimpan akun baru di database.
Login:

Flutter mengirim POST request dengan kredensial pengguna.
Django memverifikasi kredensial dan mengembalikan cookie sesi jika berhasil.
Logout:

Flutter mengirim request ke endpoint logout Django.
Django menghapus cookie sesi, dan Flutter menghapus data pengguna dari aplikasi.
Tampilan Menu pada Flutter:

Setelah login, CookieRequest digunakan untuk mengambil data pengguna dan menampilkan menu yang sesuai.
Implementasi Step-by-Step
Setup Backend (Django):

Membuat model data di Django.
Menambahkan endpoint API menggunakan Django REST Framework.
Mengatur middleware untuk mendukung cookie.
Setup Flutter:

Menambahkan dependensi seperti http dan flutter_secure_storage.
Membuat model Dart untuk mengelola data JSON.
Implementasi Autentikasi:

Membuat form untuk login dan register di Flutter.
Menambahkan logika pengiriman data ke server Django.
Mengelola response dan cookie untuk sesi pengguna.
Pengambilan dan Pengiriman Data:

Membuat fungsi untuk GET dan POST request.
Menyertakan header atau cookie jika diperlukan untuk autentikasi.
UI dan Sinkronisasi Data:

Menampilkan data yang diambil dari backend.
Memastikan data di-refresh setelah perubahan.
