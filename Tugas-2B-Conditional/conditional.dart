import 'dart:io';

// Nomor 1 Ternary operator
void main() {
  // Pesan Ternary dan diberikan trim dan uppercase agar message user menghapus spasi diawal dan akhir serta jawaban selalu huruf kapital.
  stdout.write("Mau menginstall aplikasi dart? (Y/T): ");
  String answer = stdin.readLineSync()!.trim().toUpperCase();

  // Jika Y message nya "anda akan menginstal aplikasi dart", jika T messagenya Aborted, dan jika bukan Y/T maka message pilihan tidak valid
  String message = answer == 'Y' ? "Anda akan menginstall aplikasi dart" : (answer == 'T' ? "Aborted" : "Pilihan tidak valid");
  print(message);
}



// Nomor 2 If-else if dan else
void main() {
  // Input nama dan peran dari pengguna
  stdout.write("Masukkan nama: ");
  var nama = stdin.readLineSync()!.trim();

  stdout.write("Masukkan peran (Penyihir/Guard/Werewolf): ");
  var peran = stdin.readLineSync()!.trim();

  // Mengecek kondisi nama dan peran
  if (nama.isEmpty && peran.isEmpty) {
    print("Nama dan peran harus diisi!");
  } else if (nama.isEmpty) {
    print("Nama harus diisi!");
  } else if (peran.isEmpty) {
    print("Halo $nama, Pilih peranmu untuk memulai game!");
  } else {
    print("Selamat datang di Dunia Werewolf, $nama");

    // Mengecek kondisi sesuai peran yang telah dipilih
    switch (peran.toLowerCase()) {
      case 'penyihir':
        print("Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
        break;
      case 'guard':
        print("Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
        break;
      case 'werewolf':
        print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
        break;
      default:
        print("Peran yang dimasukkan tidak valid.");
    }
  }
}



// Nomor 3 Switch case
void main() {
  stdout.write("Masukkan hari (Senin/Minggu): ");
  String inputDay = stdin.readLineSync()!.trim();

  // Merubah atau memastikan hanya huruf pertama yang besar ketika sudah menginputkan hari
  String day = inputDay.isNotEmpty
      ? inputDay[0].toUpperCase() + inputDay.substring(1).toLowerCase()
      : "";
  String quote = "";

  switch (day) {
    case 'Senin':
      quote =
          "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.";
      break;
    case 'Selasa':
      quote =
          "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.";
      break;
    case 'Rabu':
      quote =
          "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.";
      break;
    case 'Kamis':
      quote =
          "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.";
      break;
    case 'Jumat':
      quote = "Hidup tak selamanya tentang pacar.";
      break;
    case 'Sabtu':
      quote = "Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.";
      break;
    case 'Minggu':
      quote =
          "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.";
      break;
    // default:
    //   quote = "Hari yang dimasukkan tidak valid.";
  }

  if (quote.isNotEmpty) {
    print("$day: $quote");
  } else {
    print("Hari yang dimasukkan tidak valid.");
  }
}



// Nomor 4 Switch case
void main() {
  var date = 21;
  var month = 1;
  var tahun = 1945;

  String nameMonth;
  switch (month) {
    case 1:
      nameMonth = 'Januari';
      break;
    case 2:
      nameMonth = 'Februari';
      break;
    case 3:
      nameMonth = 'Maret';
      break;
    case 4:
      nameMonth = 'April';
      break;
    case 5:
      nameMonth = 'Mei';
      break;
    case 6:
      nameMonth = 'Juni';
      break;
    case 7:
      nameMonth = 'Juli';
      break;
    case 8:
      nameMonth = 'Agustus';
      break;
    case 9:
      nameMonth = 'September';
      break;
    case 10:
      nameMonth = 'Oktober';
      break;
    case 11:
      nameMonth = 'November';
      break;
    case 12:
      nameMonth = 'Desember';
      break;
    default:
      nameMonth = 'bulan tidak valid';
  }

  if (date >= 1 && date <= 31 && month >= 1 && month <= 12 && tahun >= 1900 && tahun <= 2200) {
    print('$date $nameMonth $tahun');
  } else {
    print('Tanggal, bulan, atau tahun tidak valid.');
  }
}
