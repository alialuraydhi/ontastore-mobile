1. Stateless Widget dan Stateful Widget
Stateless Widget:

Definisi: Stateless widget adalah widget yang tidak berubah sepanjang waktu, yaitu widget yang bersifat statis. Mereka tidak memiliki state internal yang bisa berubah.
Contoh Penggunaan: Biasanya digunakan untuk menampilkan informasi statis seperti teks, ikon, atau gambar.
Contoh Kode:
dart
Copy code
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello, World!');
  }
}
Stateful Widget:

Definisi: Stateful widget adalah widget yang dapat berubah seiring waktu. Mereka memiliki state internal yang bisa berubah dan menyebabkan widget untuk melakukan re-render.
Contoh Penggunaan: Digunakan untuk interaksi yang dinamis, seperti formulir input, animasi, atau perubahan data yang perlu diperbarui.
Contoh Kode:
dart
Copy code
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
Perbedaan Utama:

State Management: Stateless widget tidak memiliki state internal, sedangkan stateful widget memiliki state internal yang bisa berubah.
Penggunaan: Stateless widget cocok untuk konten yang tidak berubah, sedangkan stateful widget digunakan untuk konten yang berubah atau membutuhkan interaksi pengguna.

2. Widget yang Digunakan dalam Proyek
Dalam proyek ini, beberapa widget yang digunakan beserta fungsinya adalah sebagai berikut:

Scaffold: Digunakan sebagai struktur dasar untuk aplikasi, menyediakan API untuk drawer, snackbars, dan bottom sheets.
AppBar: Menyediakan app bar pada bagian atas scaffold.
Text: Menampilkan teks statis.
ElevatedButton: Sebuah tombol yang dapat ditekan, biasanya digunakan untuk aksi-aksi yang membutuhkan interaksi pengguna.
Column dan Row: Layout widgets yang digunakan untuk menata widget anak secara vertikal (Column) atau horizontal (Row).
ListView: Widget yang digunakan untuk membuat daftar scrollable.
Image: Menampilkan gambar dari sumber lokal atau jaringan.
TextField: Widget input yang memungkinkan pengguna memasukkan teks.
Icon: Menampilkan ikon dari material design atau set ikon lainnya.

3. Fungsi dari setState()
setState() adalah metode yang digunakan dalam stateful widget untuk memberitahu framework bahwa state dari widget telah berubah. Ketika setState() dipanggil, framework akan menjadwalkan pembaruan untuk widget tersebut sehingga dapat di-rebuild dengan nilai state yang baru.

Variabel yang Terdampak:

Semua variabel yang dideklarasikan dalam class state (_MyStatefulWidgetState pada contoh di atas) dan digunakan dalam metode build() bisa terdampak oleh setState().
Contoh Penggunaan:

dart
Copy code
void _incrementCounter() {
  setState(() {
    _counter++;
  });
}
Pada contoh di atas, variabel _counter diperbarui dan menyebabkan widget untuk di-rebuild dengan nilai baru dari _counter.

4. Perbedaan antara const dengan final
const:
Digunakan untuk membuat variabel yang bersifat konstan dan nilainya harus sudah diketahui pada saat kompilasi.
Membuat objek yang immutable.
Contoh: const String myString = "Hello";
final:
Digunakan untuk membuat variabel yang nilainya hanya bisa ditetapkan sekali dan nilainya bisa ditetapkan pada saat runtime.
Nilai variabel final bisa diinisialisasi di dalam konstruktor atau metode.
Contoh: final int myNumber = getNumber();

5. Implementasi Checklist
Berikut adalah langkah-langkah yang diambil untuk mengimplementasikan checklist di atas dalam proyek ini:

Menggunakan Stateless dan Stateful Widgets:

Menentukan komponen mana yang bersifat statis dan mana yang dinamis.
Mengimplementasikan komponen statis menggunakan StatelessWidget dan komponen dinamis menggunakan StatefulWidget.
Menggunakan berbagai widget:

Menata tampilan aplikasi menggunakan widget seperti Scaffold, AppBar, Column, Row, Text, ListView, Image, TextField, dan Icon.
Mengelola state dengan setState():

Menggunakan setState() untuk memperbarui state dan menyebabkan widget di-rebuild dengan nilai baru.
Memastikan bahwa setiap perubahan state relevan dipanggil dengan setState().
Menggunakan const dan final secara tepat:

Mendeklarasikan variabel konstan dengan const untuk nilai yang sudah diketahui pada saat kompilasi.
Menggunakan final untuk variabel yang nilainya hanya diinisialisasi sekali tetapi bisa ditentukan pada saat runtime.
