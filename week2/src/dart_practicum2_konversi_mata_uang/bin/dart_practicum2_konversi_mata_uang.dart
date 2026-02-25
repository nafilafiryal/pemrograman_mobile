import 'dart:io';

void main() {
  // Map kurs mata uang terhadap Rupiah (IDR)
  Map<String, double> kurs = {
    'USD': 15500.0, // Dolar Amerika
    'EUR': 19000.0, // Euro
    'JPY': 107.0,   // Yen Jepang
  };

  print('=== Konversi Mata Uang Rupiah (IDR) ===');
  stdout.write('Masukkan nominal dalam Rupiah (Rp): ');
  double rupiah = double.parse(stdin.readLineSync()!);

  print('\nHasil Konversi:');
  kurs.forEach((mataUang, nilaiTukar) {
    double hasil = rupiah / nilaiTukar;
    print('- $mataUang: ${hasil.toStringAsFixed(2)}');
  });
}
