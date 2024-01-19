class Lingkaran {
  final phi = 3.14;
  late double _jariJari;

  double get jariJari => _jariJari;

  void setJariJari(double value) {
    if (value < 0) {
      _jariJari = value * -1;
    } else {
      _jariJari = value;
    }
  }

  double getJariJari() {
    return _jariJari;
  }

  double luasLingkaran() {
    return phi * _jariJari * _jariJari;
  }
}


