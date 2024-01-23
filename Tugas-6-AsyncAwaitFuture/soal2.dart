Future<void> main(List<String> args) {
  print("Life");
  return Future.delayed(Duration(seconds: 1), () {
    print("is");
    return Future.delayed(Duration(seconds: 1), () {
      print("never flat");
    });
  }).then((_) {
    return Future.value();
  });
}
