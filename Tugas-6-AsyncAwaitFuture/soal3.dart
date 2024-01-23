line(){
  print("pernahkan kau merasa....");
}

line2(){
  print("pernahkan kau merasa........");
}

line3() {
  print("pernahkan kau merasa");
}

line4() {
  print("Hatimu hampa, pernahkan kau merasa hatimu kosong....");
}

Future<void> main() async {
  print("Ready. Sing");
  await Future.delayed(Duration(seconds: 5));
  line();
  await Future.delayed(Duration(seconds: 3));
  line2();
  await Future.delayed(Duration(seconds: 2));
  line3();
  await Future.delayed(Duration(seconds: 1));
  line4();
}
