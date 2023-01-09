import 'dart:math' as math;

class Calculate {
  double? x1;
  double? x2;
  double? y1;
  double? y2;

  bool verify() => x1 != null && x2 != null && y1 != null && y2 != null;

  double? distancia() {
    if (verify()) math.sqrt((math.pow((x2! - x1!), 2)) + math.pow((y2! - y1!), 2));
    return null;
  }
}

void main() {
  final calculate = Calculate();
  calculate.x1 = 0;
  calculate.x2 = 10;
  calculate.y1 = 34;
  calculate.y2 = 22;

  print(calculate.distancia());
}
