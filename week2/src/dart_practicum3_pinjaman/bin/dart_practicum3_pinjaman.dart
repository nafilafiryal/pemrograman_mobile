import 'package:dart_practicum3_pinjaman/dart_practicum3_pinjaman.dart' as dart_practicum3_pinjaman;

void main() {
  print('=== Cek Kelayakan Pinjaman ===');

  double gajiPokok = 5000000;
  gajiPokok += 1500000; // Menambahkan bonus ke total pendapatan (operator penugasan)

  int umur = 22;
  int skorKredit = 75;

  skorKredit++; // Mendapatkan tambahan 1 poin (increment)

  // Memastikan tipe data sesuai sebelum diproses (type test)
  bool isDataValid = gajiPokok is double && umur is int;

  // aturan untuk pinjaman
  bool cekUmur = umur >= 21 && umur <= 55;
  bool cekGaji = gajiPokok >= 3000000;
  bool cekSkor = skorKredit >= 70;

  // Pinjaman disetujui jika data valid, umur sesuai, dan salah satu dari gaji atau skor kredit memenuhi syarat
  bool isAcc = isDataValid && cekUmur && (cekGaji || cekSkor);

  // penentuan status menggunakan ternary operator
  String status = isAcc ? 'Disetujui' : 'Ditolak';

  // Penanganan null aware
  String? inputCatatan;
  String infoCatatan = inputCatatan ?? '-';

  print('\nHasil Evaluasi --');
  print('Total Pendapatan : Rp $gajiPokok');
  print('Skor Kredit      : $skorKredit');
  print('Status Pengajuan : $status');
  print('Catatan          : $infoCatatan');
}

 