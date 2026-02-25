import 'dart:io';

void main() {
  // Menyimpan faktor konversi menggunakan Map
  Map<String, double> konversiPanjang = {
    'Meter (m)': 1.0,
    'Centimeter (cm)': 100.0,
    'Millimeter (mm)': 1000.0,
    'Kilometer (km)': 0.001,
    'Inci (in)': 39.3701
  };

  Map<String, double> konversiMassa = {
    'Kilogram (kg)': 1.0,
    'Gram (g)': 1000.0,
    'Milligram (mg)': 1000000.0,
    'Ton (t)': 0.001,
    'Pound (lb)': 2.20462
  };

  bool jalanTerus = true;

  // Loop menu utama, berjalan terus sampai user memilih 0
  while (jalanTerus) {
    print('\n=== Aplikasi Konversi Unit ===');
    print('1. Konversi Panjang (Base: Meter)');
    print('2. Konversi Massa (Base: Kilogram)');
    print('0. Keluar');
    stdout.write('Pilih menu (0/1/2): ');
    
    String? menu = stdin.readLineSync();

    // Keluar dari program
    if (menu == '0') {
      print('Sip, program selesai. Makasih!');
      jalanTerus = false;
      continue; 
    }

    // Validasi jika input menu tidak sesuai pilihan
    if (menu != '1' && menu != '2') {
      print('Pilihan nggak valid, coba lagi ya.');
      continue;
    }

    // Meminta input nilai yang akan dikonversi
    stdout.write('Masukkan nilai yang mau dikonversi: ');
    String? inputAngka = stdin.readLineSync();
    
    // Parsing input ke double. Jika gagal (misal input huruf), set nilai ke -1
    double nilai = double.tryParse(inputAngka ?? '0') ?? -1;

    // Validasi: nilai panjang atau massa tidak boleh negatif
    if (nilai < 0) {
      print('Error: Masukkan angka yang bener dan nggak boleh negatif!');
      continue; // Kembali ke menu awal
    }

    print('\n-- Hasil Konversi --');
    if (menu == '1') {
      // Iterasi data Map dan kalikan dengan input user
      konversiPanjang.forEach((satuan, faktor) {
        double hasil = nilai * faktor;
        print('$satuan: ${hasil.toStringAsFixed(2)}');
      });
    } else if (menu == '2') {
      // Iterasi untuk konversi massa
      konversiMassa.forEach((satuan, faktor) {
        double hasil = nilai * faktor;
        print('$satuan: ${hasil.toStringAsFixed(2)}');
      });
    }
  }
}
