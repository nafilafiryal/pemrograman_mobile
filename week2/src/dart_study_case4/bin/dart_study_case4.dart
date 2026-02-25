import 'package:dart_study_case4/dart_study_case4.dart' as dart_study_case4;

void main() {
  double hargaBarang = 120000;
  int jumlahBeli = 3;
  String kodeMember = 'GOLD';

  double total = hargaBarang * jumlahBeli;
  double diskonPersen = 0;

  if (kodeMember == 'GOLD') {
    diskonPersen = 0.1;
  } else if (kodeMember == 'SILVER') {
    diskonPersen = 0.05;
  }

  double diskonTambahan = total > 300000 ? 0.05 : 0;
  double totalDiskon = total * (diskonPersen + diskonTambahan);
  double hargaAkhir = total - totalDiskon;

  print('Total: Rp$total');
  print('Diskon: Rp$totalDiskon');
  print('Harga Akhir: Rp$hargaAkhir');
}
