Flutter Application - README

 Kegunaan `const` di Flutter

 Apa Itu `const` di Flutter?

`const` adalah kata kunci di Flutter yang digunakan untuk mendeklarasikan nilai konstan yang tetap sama sepanjang runtime aplikasi. Nilai ini dihitung pada waktu kompilasi, yang berarti bahwa nilai tersebut tidak akan berubah selama aplikasi berjalan.

Keuntungan Menggunakan `const`

- Optimalisasi Kinerja: Dengan menggunakan `const`, Flutter dapat mengoptimalkan penggunaan memori dan kinerja karena nilai konstan hanya dihitung sekali dan dapat dibagikan di seluruh aplikasi.
- Immutability: Nilai yang dideklarasikan dengan `const` bersifat immutable, artinya tidak dapat diubah setelah dideklarasikan. Ini membantu mencegah perubahan yang tidak disengaja dan membuat kode lebih aman.
- Reusability: Komponen yang sama dapat digunakan kembali di berbagai tempat tanpa harus mendeklarasikan ulang, mengurangi duplikasi kode.

 Kapan Sebaiknya Menggunakan `const`?

- Gunakan `const` untuk widget yang tidak akan berubah selama siklus hidupnya.
- Gunakan `const` untuk nilai yang tetap konstan dan tidak memerlukan perubahan dinamis.

 Kapan Tidak Menggunakan `const`?

- Jangan gunakan `const` untuk widget atau nilai yang akan berubah selama runtime.
- Hindari menggunakan `const` pada variabel yang nilainya tergantung pada input pengguna atau data yang dapat berubah.

 Penggunaan `Column` dan `Row` pada Flutter

 `Column`

`Column` adalah widget tata letak yang menyusun anak-anaknya secara vertikal. Ini berguna ketika Anda ingin menyusun widget dalam satu kolom.

 Contoh Implementasi `Column`:

```dart
Column(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

`Row`

`Row` adalah widget tata letak yang menyusun anak-anaknya secara horizontal. Ini berguna ketika Anda ingin menyusun widget dalam satu baris.

 Contoh Implementasi `Row`:

```dart
Row(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

 Perbandingan `Column` dan `Row`

- Orientasi: `Column` menyusun widget secara vertikal, sedangkan `Row` menyusun widget secara horizontal.
- Spasi: Kedua widget ini dapat menggunakan properti seperti `MainAxisAlignment` dan `CrossAxisAlignment` untuk mengatur spasi dan perataan anak-anaknya.
- Use Case: Gunakan `Column` untuk tata letak vertikal dan `Row` untuk tata letak horizontal.

 Elemen Input pada Halaman Form

 Elemen Input yang Digunakan

Pada tugas ini, elemen input yang digunakan meliputi:

- `TextField` untuk input teks.
- `Checkbox` untuk pilihan biner.
- `DropdownButton` untuk pilihan dari beberapa opsi.

Elemen Input Lain yang Tidak Digunakan

- `Radio`: Pilihan alternatif yang eksklusif.
- `Slider`: Untuk memilih nilai dari rentang.
- `Switch`:Pilihan biner yang lebih visual dibandingkan `Checkbox`.

 Pengaturan Tema (Theme) dalam Aplikasi Flutter

 Mengatur Tema

Untuk mengatur tema dalam aplikasi Flutter, gunakan widget `ThemeData` di dalam properti `theme` dari `MaterialApp`. Ini memungkinkan konsistensi tampilan dan nuansa di seluruh aplikasi.

 Contoh Implementasi Tema:

```dart
MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 18, color: Colors.black),
    ),
  ),
  home: MyHomePage(),
);
```

 Apakah Tema Diimplementasikan?

Ya, tema diimplementasikan pada aplikasi yang saya buat untuk menjaga konsistensi warna dan gaya teks di seluruh aplikasi.

 Navigasi dalam Aplikasi dengan Banyak Halaman

 Cara Menangani Navigasi

Dalam aplikasi Flutter dengan banyak halaman, navigasi ditangani menggunakan `Navigator` dan `Route`. `Navigator` bertindak sebagai tumpukan yang mengelola halaman (route) aplikasi.

 Contoh Implementasi Navigasi:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);
```

Untuk navigasi kembali:

```dart
Navigator.pop(context);
```
 Navigator 2.0

Untuk aplikasi yang lebih kompleks, `Navigator 2.0` dapat digunakan untuk memberikan kontrol lebih terhadap navigasi dan pengelolaan state halaman.
