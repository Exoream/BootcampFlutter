import 'dart:io';

// Nomor 1 Membuat kalimat
void main() {
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  // Merubah awal kata dart huruf besar menjadi Dart
  var capitalizedWord = word.replaceFirst(word[0], word[0].toUpperCase());

  // Menggabungkan semua kata menjadi satu
  var combinatedWord =
      '$capitalizedWord $second $third $fourth $fifth $sixth $seventh';
  print(combinatedWord);
}



// Nomor 2 Mengurai kalimat (Akses karakter dalam string)
void main() {
  var sentence = "I am going to be Flutter Developer";

  var firstWord = sentence[0];
  var secondWord = sentence[2] + sentence[3];

  // Mengambil potongan string index awal dan index akhir
  var thirdWord = sentence.substring(5, 10);
  var fourthWord = sentence.substring(11, 13);
  var fifthWord = sentence.substring(14, 16);
  var sixthWord = sentence.substring(17, 24);
  var seventhWord = sentence.substring(25);

  print('First Word: ' + firstWord);
  print('Second Word: ' + secondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
}



// Nomor 3 Gabungkan Nama dari Inputan
void main(List<String> args) {
  print("Masukkan nama depan : ");
  String? firstName = stdin.readLineSync()!;

  print("Masukkan nama belakang: ");
  String? lastName = stdin.readLineSync()!;

  String fullName = '$firstName $lastName';
  print("Nama lengkap anda adalah : $fullName");
}



// Nomor 4 Operator
void main(List<String> args) {
  print("Masukkan angka pertama: ");
  double firstNumber = double.parse(stdin.readLineSync()!.trim());

  print("Masukkan angka kedua: ");
  double secondNumber = double.parse(stdin.readLineSync()!.trim());

  // Operasi Operator
  double multiplicationResult = firstNumber * secondNumber;
  double additionResult = firstNumber + secondNumber;
  double subtractionResult = firstNumber - secondNumber;

  // Khusus bagian pembagian diberikan kondisi jika dibagi 0 maka error atau tidak bisa
  double divisionResult;
  if (secondNumber != 0) {
    divisionResult = firstNumber / secondNumber;
    print("Hasil pembagian: ${divisionResult % 1 == 0 ? divisionResult.toInt() : divisionResult.toStringAsFixed(2)}");
  } else {
    print("Pembagian tidak bisa dibagi 0");
  }

  // Konversi nilai hasil double jika misalnya 50.0 menjadi 50 saja, namun jika hasil nya desimal/koma cukup ambil 2 angka terakhir pembagiannya
  print("Hasil perkalian: ${multiplicationResult % 1 == 0 ? multiplicationResult.toInt() : multiplicationResult.toStringAsFixed(2)}");
  print("Hasil penambahan: ${additionResult % 1 == 0 ? additionResult.toInt() : additionResult.toStringAsFixed(2)}");
  print("Hasil pengurangan: ${subtractionResult % 1 == 0 ? subtractionResult.toInt() : subtractionResult.toStringAsFixed(2)}");
}
