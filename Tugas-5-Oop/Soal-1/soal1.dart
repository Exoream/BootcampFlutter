class Segitiga {
  double? setengah;
  double? alas;
  double? tinggi;

  double luasSegitiga(){
    return this.setengah! * this.alas! * this.tinggi!;
  }
}

void main(List<String> args) {
  Segitiga segitiga = new Segitiga();

  segitiga.setengah = 0.5;
  segitiga.alas = 20.0;
  segitiga.tinggi = 30.0;

  var luasSegitiga = segitiga.luasSegitiga();
  print(luasSegitiga);
}