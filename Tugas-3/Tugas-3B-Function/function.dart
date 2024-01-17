// Function Nomor 1
teriak() {
  return "Halo Sanbers!";
}

// Function Nomor 2
kalikan(a, b) {
  return a * b;
}

// Function Nomor 3
introduce(String name, int age, String address, String hobby) {
  String text =
      "Nama Saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
  return text;
}

// Function Nomor 4
factorial(int n) {
  if (n <= 0) {
    return 1;
  } else {
    // return n * factorial(n - 1); // Rekursif
    int hasil = 1;
    for (int i = 1; i <= n; i++) {
      hasil *= i;
    }
    print('Hasil faktorial dari $n! = $hasil');
  }
}

void main() {
  // Nomor 1
  print(teriak());


  // Nomor 2
  var num1 = 12;
  var num2 = 4;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali); // 48


  // Nomor 3
  final String name = "Achmad";
  final int age = 30;
  final String address = "Jln. Malioboro, Yogyakarta";
  final String hobby = "Gaming";

  final perkenalan = introduce(name, age, address, hobby);
  print(perkenalan); // Menampilkan "Nama saya Achmad, umur saya 30 tahun, alamat saya di Jln. Malioboro, Yogyakarta,dan saya punya hobby yaitu Gaming!"


  // Nomor 4
  int angka = 6;
  factorial(angka);
}
