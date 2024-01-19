import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran();

  lingkaran.setJariJari(16.0);
  print('Jari-Jari Lingkaran: ${lingkaran.jariJari}');
  print('Luas Lingkaran: ${lingkaran.luasLingkaran()}');
}
