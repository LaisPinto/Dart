class CalculateImc {
  late double _weight;
  late double _height;

  CalculateImc._() {
    this._weight = 0.0;
    this._height = 0.0;
  }

  static final instance = CalculateImc._();

  double get calculateImc => _weight / (_height * _height);

  double get height => _height;
  double get weight => _weight;

  set height(double height) => _height = height;

  set weight(double weight) => _weight = weight;

  @override
  String toString() => "${CalculateImc}";
}

void main() {
  CalculateImc.instance.height = 1.75;
  CalculateImc.instance.weight = 75;
  print(CalculateImc);
}
