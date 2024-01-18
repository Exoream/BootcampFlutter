void dataHandling(List<List<String>> dataList) {
  for (List<String> data in dataList) {
    // Extrak Data List
    String id = data[0];
    String name = data[1];
    String birthPlace = data[2];
    String dateOfBirth = data[3];
    String hobby = data[4];

    print("Nomor Id : $id");
    print("Nama Lengkap : $name");
    print("TTL : $birthPlace, $dateOfBirth");
    print("Hobi : $hobby");
    print("\n");

    // Destructuring langsung dalam loop
    // var [id, name, birthPlace, dateOfBirth, hobby] = data;
    // print("Nomor Id : $id");
    // print("Nama Lengkap : $name");
    // print("TTL : $birthPlace, $dateOfBirth");
    // print("Hobi : $hobby");
    // print("\n");
  }
}

void main(){
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/04/1970", "Berkebun"]
  ];

  dataHandling(input);
}
