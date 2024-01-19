class Titan{
  int? _powerPoint;

  int get powerPoint => _powerPoint ?? 0;

  set powerPoint(int value){
    _powerPoint = value;
  }
}