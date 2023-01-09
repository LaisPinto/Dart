import 'dart:math' as math;

class Bhaskara {
  double? a;
  double? b;
  double? c;

  double calculateDelta() => ((b! * b!) - (4 * a! * c!));
  //method

  double calculateX1() => (-b! + math.sqrt(math.pow(-b!, 2) - 4 * (a! * c!))) / (2 * a!);

  double calculateX2() => (-b! - math.sqrt(math.pow(-b!, 2) - 4 * (a! * c!))) / (2 * a!);
}

void main() {
  final bhaskara = Bhaskara();
  bhaskara.a = 1;
  bhaskara.b = 2;
  bhaskara.c = -15;

  print(bhaskara.calculateDelta());
  print(bhaskara.calculateX1());
  print(bhaskara.calculateX2());
}
