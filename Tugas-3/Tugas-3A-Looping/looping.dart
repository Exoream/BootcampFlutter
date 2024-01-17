// Nomor 1 Looping While
void main() {
  var iterasiIncrease = 0;
  print("Lopping Pertama");
  while (iterasiIncrease < 20) {
    iterasiIncrease += 2;
    print(iterasiIncrease.toString() + " -" + " I love coding");
  }

  var iterasiReduce = 20;
  print("Looping Kedua");
  while (iterasiReduce >= 2) {
    print(iterasiReduce.toString() + " -" + " I will become a mobile developer");
    iterasiReduce -= 2;
  }
}


// Nomor 2 Looping For
void main() {
  for (var i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 == 1) {
      print(i.toString() + " - I Love Coding");
    } else if (i % 2 == 1) {
      print (i.toString() + " - Santai");
    } else if (i % 2 == 0) {
      print(i.toString() + " - Berkualitas");
    }
  }
}


// Nomor 3 Membuat Persegi Panjang #
void main() {
  for (int i = 0; i < 4; i++) {
    String row = "";
    for (int j = 0; j < 8; j++) {
      row += "#";
    }
    print(row);
  }
}


// Nomor 4 Membuat Tangga
void main() {
  for (int i = 1; i <= 7; i++) {
    String row = "";
    for (int j = 1; j <= i; j++) {
      row += "#";
    }
    print(row);
  }
}

