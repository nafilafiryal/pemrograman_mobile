# Laporan Praktikum Layout dan Navigasi Flutter

**Nama:** Nafilah Firyal Hana
**NIM:** 244107060047

## Praktikum 1: Membangun Layout di Flutter
![Praktikum 1](img/1.png)

**Penjelasan:**
Pada langkah awal ini, tata letak aplikasi dipecah menjadi elemen dasar menggunakan widget `Row` dan `Column`. Pembuatan bagian judul (*title section*) dilakukan dengan menyusun teks dan ikon bintang di dalam `Container` guna memberikan *padding*. Elemen-elemen tersebut diatur agar dapat mengisi sisa ruang secara proporsional menggunakan bantuan widget `Expanded`.

## Praktikum 2: Implementasi Button Row
![Praktikum 2](img/2.png)

**Penjelasan:**
Tahap ini berfokus pada penambahan baris tombol interaktif (Call, Route, Share) di bawah bagian judul. Untuk menjaga agar kode tetap rapi dan *reusable*, sebuah *method* terpisah bernama `_buildButtonColumn` diimplementasikan. *Method* ini bertugas merender setiap kolom tombol beserta ikon dan teksnya. Jarak antar tombol diatur secara merata menggunakan properti `MainAxisAlignment.spaceEvenly`.

## Praktikum 3: Implementasi Text Section
![Praktikum 3](img/3.png)

**Penjelasan:**
Bagian deskripsi wisata ditambahkan di bawah baris tombol. Teks dibungkus di dalam widget `Container` dengan konfigurasi *padding* sebesar 32 piksel pada seluruh sisinya. Selain itu, properti `softWrap: true` diaktifkan agar teks dapat otomatis turun ke baris baru ketika mencapai batas lebar layar, sehingga paragraf tetap utuh dan tidak terpotong.

## Praktikum 4: Implementasi Image Section & Struktur ListView
![Praktikum 4](img/4.png)

**Penjelasan:**
Penyempurnaan visual dilakukan dengan menyisipkan aset gambar (`lake.jpg`) pada bagian paling atas antarmuka. Penyesuaian gambar menggunakan `BoxFit.cover` diterapkan agar gambar dapat memenuhi area secara proporsional tanpa merusak rasio aslinya.

Langkah krusial pada tahap ini adalah memodifikasi properti `body` pada `Scaffold`. Keseluruhan struktur *widget* yang sebelumnya dibungkus menggunakan `Column` diubah menjadi `ListView`. Modifikasi ini sangat penting agar antarmuka menjadi responsif dan mendukung fitur *scroll* dinamis, terutama saat aplikasi dijalankan pada perangkat dengan resolusi layar yang lebih kecil.


## Tugas Praktikum 1: Project `basic_layout_flutter`
![Tugas Praktikum 1](img/5.png)

**Penjelasan:**
Tugas ini mengimplementasikan tata letak dasar aplikasi sesuai panduan. Antarmuka profil wisata Oeschinen Lake dibangun dengan pendekatan modular, membagi tata letak menjadi empat *widget* terpisah agar struktur kode lebih rapi:

1. **Image Section:** Menampilkan gambar utama menggunakan `BoxFit.cover`.
2. **Title Section:** Menyusun nama lokasi dan rating bintang menggunakan kombinasi `Row`, `Column`, serta `Expanded` untuk mengisi sisa ruang.
3. **Button Section:** Menggunakan `Row` dengan `MainAxisAlignment.spaceEvenly` untuk menata tiga tombol interaktif secara sejajar dan merata.
4. **Text Section:** Menampilkan paragraf deskripsi dengan tambahan `Padding` dan properti `softWrap: true` agar teks menyesuaikan lebar layar.

Seluruh komponen di atas disusun secara vertikal di dalam `Column` utama, yang kemudian dibungkus menggunakan `SingleChildScrollView` agar halaman mendukung fitur *scroll* dan terhindar dari *overflow* pada layar berukuran kecil.