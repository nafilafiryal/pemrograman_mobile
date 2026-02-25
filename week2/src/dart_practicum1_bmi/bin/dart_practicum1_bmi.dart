import 'dart:io';

void main() {
  print('=== Kalkulator BMI ===');
  stdout.write('Masukkan berat badan (kg): ');
  double berat = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan tinggi badan (cm): ');
  double tinggiCm = double.parse(stdin.readLineSync()!);

  // Konversi cm ke meter
  double tinggiM = tinggiCm / 100;

  // Perhitungan BMI
  double bmi = berat / (tinggiM * tinggiM);

  String kategori;
  if (bmi < 18.5) {
    kategori = 'Kekurangan berat badan';
  } else if (bmi >= 18.5 && bmi < 24.9) {
    kategori = 'Normal';
  } else if (bmi >= 25 && bmi < 29.9 ) {
    kategori = 'Kelebihan berat badan';
  } else {
    kategori = 'Obesitas';
  }

  print('\nNilai BMI Anda: ${bmi.toStringAsFixed(2)}');
  print('Kategori: $kategori');
}
