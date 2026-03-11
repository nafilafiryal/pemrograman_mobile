import 'package:kuis_244107060047_nafilah/kuis_244107060047_nafilah.dart' as kuis_244107060047_nafilah;

void main() {
  // --- 1. Identitas & Personalisasi NIM ---
  String nama = "Nafilah Firyal Hana"; 
  String nim = "244107060047"; 

  // Mengambil 3 digit terakhir NIM
  String tigaDigitTerakhir = nim.substring(nim.length - 3);
  double nilaiUnikNIM = double.parse(tigaDigitTerakhir);

  // --- 2. Variabel & Tipe Data ---
  List<double> daftarHarga = [
    55000.0, 
    30000.0, 
    15000.0, 
    40000.0, 
    25000.0
  ];

  // Menambahkan nilai unik NIM sebagai elemen ke-6
  daftarHarga.add(nilaiUnikNIM);

  // --- 3. Memanggil Fungsi ---
  double totalAwal = hitungTotal(daftarHarga);

  // --- 4. Control Flow (Percabangan) & Null Safety ---
  double besarDiskon = 0.0;
  String? pesanDiskon;

  // Logika penentuan diskon
  if (totalAwal > 200000) {
    besarDiskon = totalAwal * 0.10; 
    pesanDiskon = "Selamat! Anda dapat diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    besarDiskon = totalAwal * 0.05; 
    pesanDiskon = "Lumayan, Anda dapat diskon 5%";
  } else {
    besarDiskon = 0.0; 
  }

  double totalAkhir = totalAwal - besarDiskon;

  // --- 5. Output ---
  print("=== Struk Belanja Toko ===");
  print("Nama         : $nama");
  print("NIM          : $nim");
  print("Total Awal   : Rp $totalAwal");
  
  if (pesanDiskon != null) {
    print("Keterangan   : ${pesanDiskon!}");
  } else {
    print("Keterangan   : Maaf, belum ada diskon.");
  }

  print("Besar Diskon : Rp $besarDiskon");
  print("Total Akhir  : Rp $totalAkhir");
}

double hitungTotal(List<double> hargaBarang) {
  double total = 0;

  for (double harga in hargaBarang) {
    total += harga;
  }
  return total;
}
